/**
 * Created by 土豆烧排骨
 * 2022/1/18 下午 10:29
 */


package com.survey.entity;

public class SecendTitle {
    private Integer id;
    private String secendMessage;
    private Integer fid;

    public SecendTitle() {
    }

    public SecendTitle(Integer id, String secendMessage, Integer fid) {
        this.id = id;
        this.secendMessage = secendMessage;
        this.fid = fid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSecendMessage() {
        return secendMessage;
    }

    public void setSecendMessage(String secendMessage) {
        this.secendMessage = secendMessage;
    }

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    @Override
    public String toString() {
        return "SecendTitle{" +
                "id=" + id +
                ", secendMessage='" + secendMessage + '\'' +
                ", fid=" + fid +
                '}';
    }
}
