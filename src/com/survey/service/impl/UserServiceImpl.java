/**
 * Created by 土豆烧排骨
 * 2022/1/17 下午 8:59
 */


package com.survey.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.media.sound.SoftTuning;
import com.survey.common.Dbutils;
import com.survey.dao.AdminMapper;
import com.survey.dao.StudentMapper;
import com.survey.dao.UserMapper;
import com.survey.entity.Admin;
import com.survey.entity.Student;
import com.survey.entity.User;
import com.survey.service.UserService;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.net.PasswordAuthentication;
import java.sql.Statement;
import java.util.List;
import java.util.UUID;

public class UserServiceImpl implements UserService {
   private static StudentMapper studentMapper;
    private static UserMapper userMapper;
    private static AdminMapper adminMapper;
    static {
    studentMapper=Dbutils.getSqlSession().getMapper(StudentMapper.class);
        userMapper=Dbutils.getSqlSession().getMapper(UserMapper.class);
        adminMapper=Dbutils.getSqlSession().getMapper(AdminMapper.class);
    }

    @Override
    //学生登录
    public Student stuLogin(String studentId, String password){
        //获取学生mapper
        Student student = studentMapper.selectStuByNamePwd(studentId, password);
        if(student!=null){
          return  student;
        }
        return  null;

    }
    //企业登录
    @Override
    public User userLogin(String username, String password) {
        //获取企业mapper
        User user = userMapper.selectUserByNamePwd(username, password);
        if(user!=null){
            return user;
        }
        return  null;
    }
    //管理员登录
    @Override
    public Admin adminLogin(String username, String password) {
        //获取管理员用户mapper
        Admin admin = adminMapper.selectAdminByNamePwd(username, password);
        if(admin!=null){
            return admin;
        }
        return  null;
    }

    //分页查学生
    @Override
    public PageInfo<Student> ListStudentPaging(Integer pageNum,Integer pageSize,String studentClass,String studentId) {
        PageHelper.startPage(pageNum,pageSize);
        List<Student> students = studentMapper.selectAllStudent( studentClass,studentId);
     return new PageInfo<>(students);

    }

    /**
     * 企业用户分页查询
     *
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public PageInfo<User> ListUserPaging(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<User> user = userMapper.selectAllUser();
        return new PageInfo<>(user);
    }

    /**
     * 显示所有班级
     *
     * @return
     */
    @Override
    public List<String> ListAllClass() {
       return studentMapper.selectAllClass();
    }

    /**
     * 删除学生根据id
     *
     * @param id
     * @return
     */
    @Override
    public int deleteStudent(Integer id) {
       return studentMapper.delete(id);
    }

    @Override
    public int insertStudent(Student student) {
        if(null!=student){
        return  studentMapper.insertStu(student);

        }
        return -1;
    }

    @Override
    public int updateStudent(Student student) {
        if(null!=student){
            return  studentMapper.updateStu(student);
        }
        return -1;
    }

    @Override
    public Student selectStuById(Integer id) {
        return studentMapper.selectStuById(id);
    }

    @Test
    public  void ts(){
    UserServiceImpl userService = new UserServiceImpl();
        Student student = userService.selectStuById(207);
        System.out.println(student);
    }
}
