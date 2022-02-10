package com.survey.service;

import com.github.pagehelper.PageInfo;
import com.survey.common.Dbutils;
import com.survey.entity.Admin;
import com.survey.entity.Student;
import com.survey.entity.User;

import java.util.List;
import java.util.UUID;

public interface UserService {
    /**
     * 学生登录
     * @param studentId
     * @param password
     * @return
     */
    Student stuLogin(String studentId, String password);

    /**
     * 企业登录
     * @param username
     * @param password
     * @return
     */
    User userLogin(String username, String password);

    /**
     * 管理员登录
     * @param username
     * @param password
     * @return
     */
    Admin adminLogin(String username, String password);

    /**
     * 学生分页查询
     * @param pageNum
     * @param pageSize
     * @param studentClass
     * @return
     */
    PageInfo<Student>ListStudentPaging(Integer pageNum,Integer pageSize,String studentClass,String studentId);

    /**
     * 企业用户分页查询
     * @param pageNum
     * @param pageSize
     * @return
     */
    PageInfo<User>ListUserPaging(Integer pageNum,Integer pageSize);

    /**
     * 显示所有班级
     * @return
     */
    List<String>ListAllClass();

    /**
     * 删除学生根据id
     * @return
     */
    int deleteStudent(Integer id);

    /**
     * 添加学生
     * @param student
     * @return
     */
    int insertStudent(Student student);

    /**
     * 修改学生信息
     * @param student
     * @return
     */
    int updateStudent(Student student);
    Student selectStuById(Integer id);

    /**
     * 添加企业用户
     * @param user
     * @return
     */
    int insertUser(User user);
    /**
     * 修改用户
     * @param user
     * @return
     */
    int updateUser(User user);

    /**
     * 根据id删除用户
     * @param id
     * @return
     */
    int deleteUser(Integer id);

    /**
     * 根据id查企业用户
     * @param id
     * @return
     */
    User selectUserById(Integer id);
}
