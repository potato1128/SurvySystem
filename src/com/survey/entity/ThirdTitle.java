/**
 * Created by 土豆烧排骨
 * 2022/1/18 下午 10:32
 */


package com.survey.entity;

public class ThirdTitle {
    private  Integer id;
    private String chooseTitle;
    private String chooseA;
    private String chooseB;
    private String chooseC;
    private String chooseD;
    private Integer sid;

    public ThirdTitle() {
    }

    public ThirdTitle(Integer id, String chooseTitle, String chooseA, String chooseB, String chooseC, String chooseD, Integer sid) {
        this.id = id;
        this.chooseTitle = chooseTitle;
        this.chooseA = chooseA;
        this.chooseB = chooseB;
        this.chooseC = chooseC;
        this.chooseD = chooseD;
        this.sid = sid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getChooseTitle() {
        return chooseTitle;
    }

    public void setChooseTitle(String chooseTitle) {
        this.chooseTitle = chooseTitle;
    }

    public String getChooseA() {
        return chooseA;
    }

    public void setChooseA(String chooseA) {
        this.chooseA = chooseA;
    }

    public String getChooseB() {
        return chooseB;
    }

    public void setChooseB(String chooseB) {
        this.chooseB = chooseB;
    }

    public String getChooseC() {
        return chooseC;
    }

    public void setChooseC(String chooseC) {
        this.chooseC = chooseC;
    }

    public String getChooseD() {
        return chooseD;
    }

    public void setChooseD(String chooseD) {
        this.chooseD = chooseD;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    @Override
    public String toString() {
        return "ThirdTitle{" +
                "id=" + id +
                ", chooseTitle='" + chooseTitle + '\'' +
                ", chooseA='" + chooseA + '\'' +
                ", chooseB='" + chooseB + '\'' +
                ", chooseC='" + chooseC + '\'' +
                ", chooseD='" + chooseD + '\'' +
                ", sid=" + sid +
                '}';
    }
}
