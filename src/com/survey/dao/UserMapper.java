package com.survey.dao;

import com.survey.entity.Student;
import com.survey.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.UUID;

@Mapper
public interface UserMapper {
    //这里的@Param注解的参数对应mapper.xml里的参数
//    关于不加@Param报错的话 https://blog.csdn.net/zhaoguobingbing/article/details/120765035 看这个文章
    User selectUserByNamePwd(@Param("username") String username,@Param("password") String password);
    //查询所有企业用户
    List<User> selectAllUser();
    //根据id删除企业用户
    int deleteUser(Integer id);
    //修改企业用户
    int updateUser(User user);
    //新增企业用户
    int insertUser(User user);
    //根据id查企业用户
    User selectUserById(Integer id);
}
