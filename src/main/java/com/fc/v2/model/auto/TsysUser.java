package com.fc.v2.model.auto;

import java.io.Serializable;

import io.swagger.annotations.ApiModelProperty;

public class TsysUser implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/** 主键 **/
	@ApiModelProperty(value = "主键")
	private String id;
		
	/** 用户账号 **/
	@ApiModelProperty(value = "用户账号")
	private String username;
		
	/** 用户密码 **/
	@ApiModelProperty(value = "用户密码")
	private String password;
		
	/** 昵称 **/
	@ApiModelProperty(value = "昵称")
	private String nickname;
		
	/** 部门id **/
	@ApiModelProperty(value = "部门id")
	private Integer depId;
		
	/** 岗位id **/
	@ApiModelProperty(value = "岗位id")
	private String posId;
	
	/**部门名称**/
	private String depName;
	/**岗位名称**/
	private String posName;

	

    public TsysUser(String id, String username, String password, String nickname, Integer depId, String posId) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.nickname = nickname;
		this.depId = depId;
		this.posId = posId;
	}

	public TsysUser() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }
	public Integer getDepId() {
        return depId;
    }

    public void setDepId(Integer depId) {
        this.depId = depId;
    }
	 
			
	public String getPosId() {
        return posId;
    }

    public void setPosId(String posId) {
        this.posId = posId;
    }

	public String getDepName() {
		return depName;
	}

	public void setDepName(String depName) {
		this.depName = depName;
	}

	public String getPosName() {
		return posName;
	}

	public void setPosName(String posName) {
		this.posName = posName;
	}
    
    
}