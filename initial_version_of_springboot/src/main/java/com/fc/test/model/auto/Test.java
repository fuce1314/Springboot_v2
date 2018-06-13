package com.fc.test.model.auto;

import java.io.Serializable;

public class Test implements Serializable {
    private Long id;

    private String tName;

    private String tTxt;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName == null ? null : tName.trim();
    }

    public String gettTxt() {
        return tTxt;
    }

    public void settTxt(String tTxt) {
        this.tTxt = tTxt == null ? null : tTxt.trim();
    }
}