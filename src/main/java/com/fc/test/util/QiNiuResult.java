package com.fc.test.util;

import com.fc.test.common.exception.enums.QiNiuErrorEnum;

import java.util.HashMap;

/**
 * QiNiuResult
 *
 * @description 通用返回类
 */
public class QiNiuResult extends HashMap<String, Object> {

    public QiNiuResult() {
        put("code", 200);
        put("msg", "success");
    }

    public static QiNiuResult ok() {
        return new QiNiuResult();
    }

    public static QiNiuResult error() {
        return error(QiNiuErrorEnum.UNKNOWN);
    }

    public static QiNiuResult error(QiNiuErrorEnum eEnum) {
        return new QiNiuResult().put("code", eEnum.getCode()).put("msg", eEnum.getMsg());
    }

    public static QiNiuResult error(String msg) {
        return new QiNiuResult().put("msg",msg).put("code", QiNiuErrorEnum.UNKNOWN.getCode());
    }

    public static QiNiuResult error(Integer code , String msg){
        return new QiNiuResult().put("code",code).put("msg",msg);
    }

    public static QiNiuResult exception() {
        return exception(QiNiuErrorEnum.UNKNOWN);
    }

    public static QiNiuResult exception(QiNiuErrorEnum eEnum) {
        return new QiNiuResult().put("code", eEnum.getCode()).put("msg", eEnum.getMsg());
    }



    /**
     * 封装业务数据
     *
     * @param key
     * @param value
     * @return
     */
    @Override
    public QiNiuResult put(String key, Object value) {
        super.put(key, value);
        //将HashMap对象本身返回
        return this;
    }
}
