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
    //查询全部班级（学生表的字段）
    List<String>selectAllClass();
    //根据id删除学生
    int delete(Integer id);
    //新增学生
    int insertStu(Student student);
    //修改学生
    int updateStu(Student student);
    //根据id查学生
    Student selectStuById(Integer id);

}
