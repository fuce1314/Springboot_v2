package com.fc.test.common.exception.enums;

/**
 * QiNiuErrorEnum
 * @description error类型枚举类
 */
public enum QiNiuErrorEnum {

    // 系统错误
    UNKNOWN(500,"系统内部错误，请联系管理员"),
    PATH_NOT_FOUND(404,"路径不存在，请检查路径"),
    NO_AUTH(403,"没有权限，请联系管理员"),
    DUPLICATE_KEY(501,"数据库中已存在该记录"),
    TOKEN_GENERATOR_ERROR(502,"token生成失败"),
    NO_UUID(503,"uuid为空"),
    SQL_ILLEGAL(504,"sql非法"),

    //用户权限错误
    INVALID_TOKEN(1001,"token不合法"),

    //七牛OSS错误
    OSS_CONFIG_ERROR(10050,"七牛配置信息错误"),
    OSS_UPLOAD_ERROR(10051,"OSSBookNote上传失败");

    private int code;
    private String msg;
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	/**
	 * TODO
	 * @param code
	 * @param msg
	 * @author fuce
	 * @Date 2019年11月20日 下午9:28:34
	 */
	private QiNiuErrorEnum(int code, String msg) {
		this.code = code;
		this.msg = msg;
	}
	
}
