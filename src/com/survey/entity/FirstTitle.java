/**
 * Created by 土豆烧排骨
 * 2022/1/18 下午 10:23
 */


package com.survey.entity;

public class FirstTitle {
    private Integer id;
    private Integer eid;
    private String message;

    public FirstTitle() {
    }

    public FirstTitle(Integer id, Integer eid, String message) {
        this.id = id;
        this.eid = eid;
        this.message = message;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "FirstTitle{" +
                "id=" + id +
                ", eid=" + eid +
                ", message='" + message + '\'' +
                '}';
    }
}
