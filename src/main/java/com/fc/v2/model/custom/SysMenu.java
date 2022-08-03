package com.fc.v2.model.custom;

import java.util.ArrayList;
import java.util.List;

public class SysMenu {

     /**
     * 菜单编号
     * */
    private String id;

    /**
     * 父节点
     * */
    private String parentId;

    /**
     * 标题
     * */
    private String title;

    /**
     * 菜单类型 类型   0：目录   1：菜单   2：按钮
     * */
    private Integer type;

    /**
     * 打 开 类 型 _iframe 0 _blank 1
     * */
    private Integer openType;

    /**
     * 图标
     * */
    private String icon;

    /**
     * 跳转路径
     * */
    private String href;

    /**
     * 子菜单
     * */
    private List<SysMenu> children = new ArrayList<>();


    /**
     * 计算列 提供给前端组件
     * */
    private String checkArr = "0";

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getOpenType() {
        return openType;
    }

    public void setOpenType(Integer openType) {
        this.openType = openType;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public List<SysMenu> getChildren() {
        return children;
    }

    public void setChildren(List<SysMenu> children) {
        this.children = children;
    }

    public SysMenu() {
    }

    public String getCheckArr() {
        return checkArr;
    }

    public void setCheckArr(String checkArr) {
        this.checkArr = checkArr;
    }

    public SysMenu(String id, String parentId, String title, Integer type, Integer openType, String icon, String href, List<SysMenu> children) {
        this.id = id;
        this.parentId = parentId;
        this.title = title;
        this.type = type;
        this.openType = openType;
        this.icon = icon;
        this.href = href;
        this.children = children;
    }
}
