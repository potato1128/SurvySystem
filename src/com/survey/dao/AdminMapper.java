package com.survey.dao;


import com.survey.entity.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
    Admin selectAdminByNamePwd(@Param("username") String username, @Param("password") String  password);
}
