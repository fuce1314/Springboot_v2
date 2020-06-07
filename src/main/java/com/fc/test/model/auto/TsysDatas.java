package com.fc.test.model.auto;

import java.io.Serializable;

public class TsysDatas implements Serializable {
    /** 主键 **/
	private String id;
    /** 文件地址 **/
    private String filePath;
    /** 绝对路径 **/
    private String fileAbsolutePath;
    /** 后缀 **/
    private String fileSuffix;
    /**Y 项目目录，N盘符目录 **/
    private String fileType;

    private static final long serialVersionUID = 1L;

    public TsysDatas(String id, String filePath, String fileAbsolutePath, String fileSuffix, String fileType) {
        this.id = id;
        this.filePath = filePath;
        this.fileAbsolutePath = fileAbsolutePath;
        this.fileSuffix = fileSuffix;
        this.fileType = fileType;
    }

    public TsysDatas() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath == null ? null : filePath.trim();
    }

    public String getFileAbsolutePath() {
        return fileAbsolutePath;
    }

    public void setFileAbsolutePath(String fileAbsolutePath) {
        this.fileAbsolutePath = fileAbsolutePath == null ? null : fileAbsolutePath.trim();
    }

    public String getFileSuffix() {
        return fileSuffix;
    }

    public void setFileSuffix(String fileSuffix) {
        this.fileSuffix = fileSuffix == null ? null : fileSuffix.trim();
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType == null ? null : fileType.trim();
    }
}