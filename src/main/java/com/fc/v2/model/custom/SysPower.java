package com.fc.v2.model.custom;

/**
 * Describe: 权限领域模型
 * Author: 就 眠 仪 式
 * CreateTime: 2019/10/23
 * */

public class SysPower{

    /**
     * 编号
     * */
    private String powerId;

    /**
     * 权限名称
     * */
    private String powerName;

    /**
     * 类型
     * */
    private Integer powerType;

    /**
     * 标识
     * */
    private String powerCode;

    /**
     * 路径
     * */
    private String powerUrl;

    /**
     * 打开方式
     * */
    private Integer openType;

    /**
     * 父级编号
     * */
    private String parentId;

    /**
     * 图标
     * */
    private String icon;

    /**
     * 排序
     * */
    private Integer sort;

    /**
     * 开启
     * */
    private Integer enable;

    /**
     * 计算列 提供给前端组件
     * */
    private String checkArr = "0";

    public String getPowerId() {
        return powerId;
    }

    public void setPowerId(String powerId) {
        this.powerId = powerId;
    }

    public String getPowerName() {
        return powerName;
    }

    public void setPowerName(String powerName) {
        this.powerName = powerName;
    }

    public Integer getPowerType() {
        return powerType;
    }

    public void setPowerType(Integer powerType) {
        this.powerType = powerType;
    }

    public String getPowerCode() {
        return powerCode;
    }

    public void setPowerCode(String powerCode) {
        this.powerCode = powerCode;
    }

    public String getPowerUrl() {
        return powerUrl;
    }

    public void setPowerUrl(String powerUrl) {
        this.powerUrl = powerUrl;
    }

    public Integer getOpenType() {
        return openType;
    }

    public void setOpenType(Integer openType) {
        this.openType = openType;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getEnable() {
        return enable;
    }

    public void setEnable(Integer enable) {
        this.enable = enable;
    }

    public String getCheckArr() {
        return checkArr;
    }

    public void setCheckArr(String checkArr) {
        this.checkArr = checkArr;
    }

    public SysPower() {
    }

    public SysPower(String powerId, String powerName, Integer powerType, String powerCode, String powerUrl, Integer openType, String parentId, String icon, Integer sort, Integer enable, String checkArr) {
        this.powerId = powerId;
        this.powerName = powerName;
        this.powerType = powerType;
        this.powerCode = powerCode;
        this.powerUrl = powerUrl;
        this.openType = openType;
        this.parentId = parentId;
        this.icon = icon;
        this.sort = sort;
        this.enable = enable;
        this.checkArr = checkArr;
    }
}
