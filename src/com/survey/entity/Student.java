package com.survey.entity;

public class Student {

    private Integer id; // id
    private String studentId; //学号（学生才有） 注：对应学生登录账号
    private String studentName; //学生姓名
    private String studentClass; //学生班级
    private String password; //密码
    private Integer gender;//性别

    public Student() {
    }

    public Student(Integer id, String studentId, String studentName, String studentClass, String password, Integer gender) {
        this.id = id;
        this.studentId = studentId;
        this.studentName = studentName;
        this.studentClass = studentClass;
        this.password = password;
        this.gender = gender;
    }

    public Student(String studentId, String studentName, String studentClass, String password, Integer gender) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.studentClass = studentClass;
        this.password = password;
        this.gender = gender;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentClass() {
        return studentClass;
    }

    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", studentId='" + studentId + '\'' +
                ", studentName='" + studentName + '\'' +
                ", studentClass='" + studentClass + '\'' +
                ", password='" + password + '\'' +
                ", gender=" + gender +
                '}';
    }
}
