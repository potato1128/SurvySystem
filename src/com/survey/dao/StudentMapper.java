package com.survey.dao;

import com.survey.entity.Student;
import com.survey.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper  {

    //根据账号密码查学生
    Student selectStuByNamePwd( @Param("studentId") String studentId,  @Param("password") String  password);
    //查询全部学生用户
    List<Student> selectAllStudent(String studentClass,String studentId);
    List<String>selectAllClass();

}
