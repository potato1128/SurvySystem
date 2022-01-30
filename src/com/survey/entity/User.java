package com.survey.entity;

import sun.dc.pr.PRError;

public class User {

    private Integer id;
    private String firmName; //公司名 (企业才有)
    private String username; // 邮箱  注：对应企业登录账号
    private String password; //密码


    public User() {
    }

    public User(Integer id, String firmName, String username, String password) {
        this.id = id;
        this.firmName = firmName;
        this.username = username;
        this.password = password;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirmName() {
        return firmName;
    }

    public void setFirmName(String firmName) {
        this.firmName = firmName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", firmName='" + firmName + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
