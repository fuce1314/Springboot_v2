package com.fc.test.common.quartz.task;

import org.springframework.stereotype.Component;

/**
 *测试类
 * @CLASSNAME   RyTask
 * @Description 定时调度具体工作类
 * @Auther Jan  橙寂
 * @DATE 2019/9/2 0002 15:33
 */
@Component("ryTask")
public class RyTask {

    /**
     * 无参的任务
     */
    public void runTask1()
    {
        System.out.println("正在执行定时任务，无参方法");
    }

    /**
     * 有参任务
     * 目前仅执行常见的数据类型  Integer Long  带L  string  带 ''  bool Double 带 d
     * @param a
     * @param b
     */
    public void runTask2(Integer a,Long b,String c,Boolean d,Double e)
    {
        System.out.println("正在执行定时任务，带多个参数的方法"+a+"   "+b+" "+c+"  "+d+" "+e);

    }
}
