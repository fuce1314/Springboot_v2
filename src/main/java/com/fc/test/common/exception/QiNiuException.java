package com.fc.test.common.exception;


import com.fc.test.common.exception.enums.QiNiuErrorEnum;
import lombok.Data;

/**
 * QiNiuException
 *
 * @author bobbi
 * @date 2018/10/07 13:54
 * @email 571002217@qq.com
 * @description 自定义异常
 */
@Data
public class QiNiuException extends RuntimeException{
    private String msg;
    private int code = 500;

    public QiNiuException(){
        super(QiNiuErrorEnum.UNKNOWN.getMsg());
        this.msg= QiNiuErrorEnum.UNKNOWN.getMsg();
    }


    public QiNiuException(QiNiuErrorEnum eEnum, Throwable e){
        super(eEnum.getMsg(),e);
        this.msg=eEnum.getMsg();
        this.code=eEnum.getCode();
    }

    public QiNiuException(QiNiuErrorEnum eEnum){
        this.msg=eEnum.getMsg();
        this.code=eEnum.getCode();
    }

    public QiNiuException(String exception){
       this.msg=exception;
    }

}
