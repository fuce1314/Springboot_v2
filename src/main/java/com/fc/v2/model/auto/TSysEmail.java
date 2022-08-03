package com.fc.v2.model.auto;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class TSysEmail implements Serializable {
    private String id;

    private String receiversEmail;

    private String title;

    private String content;

    private String sendUserId;

    private String sendUserName;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date createTime;

    private static final long serialVersionUID = 1L;

    public TSysEmail(String id, String receiversEmail, String title, String content, String sendUserId, String sendUserName, Date createTime) {
        this.id = id;
        this.receiversEmail = receiversEmail;
        this.title = title;
        this.content = content;
        this.sendUserId = sendUserId;
        this.sendUserName = sendUserName;
        this.createTime = createTime;
    }

    public TSysEmail() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getReceiversEmail() {
        return receiversEmail;
    }

    public void setReceiversEmail(String receiversEmail) {
        this.receiversEmail = receiversEmail == null ? null : receiversEmail.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getSendUserId() {
        return sendUserId;
    }

    public void setSendUserId(String sendUserId) {
        this.sendUserId = sendUserId == null ? null : sendUserId.trim();
    }

    public String getSendUserName() {
        return sendUserName;
    }

    public void setSendUserName(String sendUserName) {
        this.sendUserName = sendUserName == null ? null : sendUserName.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}