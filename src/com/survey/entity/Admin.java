/**
 * Created by 土豆烧排骨
 * 2022/1/17 下午 7:00
 */


package com.survey.entity;

import sun.dc.pr.PRError;

public class Admin {
    private Integer id;
    private String username;
    private String password;
    private String adminName;

    public Admin() {
    }

    public Admin(Integer id, String username, String password, String adminName) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.adminName = adminName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", adminName='" + adminName + '\'' +
                '}';
    }
}
