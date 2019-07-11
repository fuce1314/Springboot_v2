package com.fc.test.util;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/**
 * 雪花算法生成uuid
 *	
 * @author fuce
 */
public class SnowflakeIdWorker {

    // ==============================Fields===========================================

    /** 开始时间截 (2015-01-01) */
    private final long twepoch = 1420041600000L;

    /** 机器id所占的位数 */
    private final long workerIdBits = 5L;

    /** 数据标识id所占的位数 */
    private final long datacenterIdBits = 5L;

    /** 重启标志符 */
    private final long rebootBits = 2L;

    /** 支持的最大机器id，结果是31 (这个移位算法可以很快的计算出几位二进制数所能表示的最大十进制数) */
    private final long maxWorkerId = ~(-1L << workerIdBits);

    /** 支持的最大数据标识id，结果是31 */
    private final long maxDatacenterId = ~(-1L << datacenterIdBits);

    private final long maxRebootId = ~(-1L << rebootBits);

    /** 序列在id中占的位数 */
    private final long sequenceBits = 12L;

    /** 机器ID向左移12位 */
    private final long workerIdShift = sequenceBits;

    /** 数据标识id向左移17位(12+5) */
    private final long datacenterIdShift = sequenceBits + workerIdBits;

    /** 时间截向左移22位(5+5+12) */
    private final long timestampLeftShift = sequenceBits + workerIdBits + datacenterIdBits;

    /** 重启标志符左移24位(5+5+12+2) */
    private final long rebootShitft = sequenceBits + workerIdBits + datacenterIdBits + rebootBits;

    /** 生成序列的掩码，这里为4095 (0b111111111111=0xfff=4095) */
    private final long sequenceMask = ~(-1L << sequenceBits);

    private final String path = System.getProperty("user.dir");

    /** 工作机器ID(0~31) */
    private long workerId;

    /** 数据中心ID(0~31) */
    private long datacenterId;

    /** 毫秒内序列(0~4095) */
    private long sequence = 0L;

    /** 上次生成ID的时间截 */
    private long lastTimestamp = -1L;

    /** 重启标志符 */
    private long reboot = 0L;

    //==============================Constructors=====================================

    /**
     * 构造函数
     *
     * @param workerId 工作ID (0~31)
     * @param datacenterId 数据中心ID (0~31)
     */
    public SnowflakeIdWorker(long workerId, long datacenterId) {
        File file = new File(path + "\\reboot.config");
        try {
            boolean newFile = file.createNewFile();
            RandomAccessFile raf = new RandomAccessFile(file, "rw");
            byte result;

            if (newFile) {
                raf.write(0);
                raf.setLength(4);
                result = 0;
            } else {
                int next = raf.read() + 1;
                if (next > maxRebootId) {
                    next = 0;
                }
                result = (byte) next;
                raf.write(result);
            }
            this.reboot = result;
            
            
            System.out.println(result);
            
            raf.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        if (workerId > maxWorkerId || workerId < 0) {
            throw new IllegalArgumentException(String.format("worker Id can't be greater than %d or less than 0", maxWorkerId));
        }
        if (datacenterId > maxDatacenterId || datacenterId < 0) {
            throw new IllegalArgumentException(String.format("datacenter Id can't be greater than %d or less than 0", maxDatacenterId));
        }
        this.workerId = workerId;
        this.datacenterId = datacenterId;
    }

    // ==============================Methods==========================================

    /**
     * 获得下一个ID (该方法是线程安全的)
     *
     * @return SnowflakeId
     */
    public synchronized long nextId() {
        long timestamp = timeGen();

        //如果当前时间小于上一次ID生成的时间戳，说明系统时钟回退过这个时候应当抛出异常
        if (timestamp < lastTimestamp) {
            throw new RuntimeException(
                String.format("Clock moved backwards.  Refusing to generate id for %d milliseconds", lastTimestamp - timestamp));
        }

        //如果是同一时间生成的，则进行毫秒内序列
        if (lastTimestamp == timestamp) {
            sequence = (sequence + 1) & sequenceMask;
            //毫秒内序列溢出
            if (sequence == 0) {
                //阻塞到下一个毫秒,获得新的时间戳
                timestamp = tilNextMillis(lastTimestamp);
            }
        }
        //时间戳改变，毫秒内序列重置
        else {
            sequence = 0L;
        }

        //上次生成ID的时间截
        lastTimestamp = timestamp;

        //移位并通过或运算拼到一起组成64位的ID
        return (reboot << rebootShitft)
            | ((timestamp - twepoch) << timestampLeftShift) //
            | (datacenterId << datacenterIdShift) //
            | (workerId << workerIdShift) //
            | sequence;
    }

    /**
     * 阻塞到下一个毫秒，直到获得新的时间戳
     *
     * @param lastTimestamp 上次生成ID的时间截
     *
     * @return 当前时间戳
     */
    protected long tilNextMillis(long lastTimestamp) {
        long timestamp = timeGen();
        while (timestamp <= lastTimestamp) {
            timestamp = timeGen();
        }
        return timestamp;
    }

    /**
     * 返回以毫秒为单位的当前时间
     *
     * @return 当前时间(毫秒)
     */
    protected long timeGen() {
        return System.currentTimeMillis();
    }

    //==============================Test=============================================

    /** 测试 */
    public static void main(String[] args) {
    	long startTime = System.currentTimeMillis();
    
    
    	System.out.println();
        SnowflakeIdWorker idWorker = new SnowflakeIdWorker(31, 31);
        for (int i = 0; i < 100000000; i++) {
            long id = idWorker.nextId();
            //System.out.println(id);
        }
    	long endTime = System.currentTimeMillis();
    	System.out.println("运行时间:" + (endTime - startTime) + "ms");
    }

    /**
     * 获取UUID
     */
    public static String getUUID() {
        SnowflakeIdWorker idWorker = new SnowflakeIdWorker(0, 0);
        long id = idWorker.nextId();
        return String.valueOf(id);
    }    
}
