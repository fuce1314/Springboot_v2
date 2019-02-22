package com.fc.test.model.auto;

import java.io.Serializable;

public class TsysRole implements Serializable {
    private String id;

    private String name;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

	public TsysRole(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public TsysRole() {
		super();
	}
    
}