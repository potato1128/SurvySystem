/**
 * Created by 土豆烧排骨
 * 2022/1/18 下午 10:25
 */


package com.survey.entity;

public class Evaluate {
    private Integer id;
    private String title;

    public Evaluate() {
    }

    public Evaluate(Integer id, String title) {
        this.id = id;
        this.title = title;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public String toString() {
        return "Evaluate{" +
                "id=" + id +
                ", title='" + title + '\'' +
                '}';
    }
}
