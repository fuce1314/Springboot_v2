package com.fc.test.common.exception;

import com.fc.test.common.exception.enums.QiNiuErrorEnum;

/**
 * QiNiuException
 *
 * @author bobbi
 * @date 2018/10/07 13:54
 * @email 571002217@qq.com
 * @description 自定义异常
 */
public class QiNiuException extends RuntimeException{
	private static final long serialVersionUID = 1L;
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


	public String getMsg() {
		return msg;
	}


	public void setMsg(String msg) {
		this.msg = msg;
	}


	public int getCode() {
		return code;
	}


	public void setCode(int code) {
		this.code = code;
	}

	public QiNiuException(String msg, int code) {
		super();
		this.msg = msg;
		this.code = code;
	}
    
}
