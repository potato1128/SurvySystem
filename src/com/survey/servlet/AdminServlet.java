/**
 * Created by 土豆烧排骨
 * 2022/1/20 下午 1:52
 */


package com.survey.servlet;

import com.github.pagehelper.PageInfo;
import com.survey.common.Dbutils;
import com.survey.common.TypeUtils;
import com.survey.entity.Admin;
import com.survey.entity.Student;
import com.survey.entity.User;
import com.survey.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;
@WebServlet("/AdminServlet")
public class AdminServlet extends BaseServlet{
    private  static UserServiceImpl userService=null;
    static {
        userService = new UserServiceImpl();
    }
    //展示所有学生
    public void ShowStudentPaging(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String pageNum0 = request.getParameter("pageNum");
        String pageSize0 = request.getParameter("pageSize");
        String studentClass = request.getParameter("studentClass");
        String studentId= request.getParameter("studentId");
        if(studentId!=null){
            request.setAttribute("studentId",studentId);
        }
        if(studentClass!=null){
            if(studentClass.equals("全部班级")||studentClass==""){
                studentClass=null;
            }else {
                request.setAttribute("studentClass",studentClass);
            }
        }
        List<String> strings = userService.ListAllClass();
        request.getSession().setAttribute("classRoom",strings);
        request.setAttribute("currentPage",pageNum0);
        int pageNum = 0;
        int pageSize=0;
        if(pageNum0==null||pageSize0==null){
            pageNum=1;
            pageSize=7;
        }else {
            pageNum=TypeUtils.toInt(pageNum0);
            pageSize=TypeUtils.toInt(pageSize0);
        }
        PageInfo<Student> studentPageInfo = userService.ListStudentPaging(pageNum, pageSize,studentClass,studentId);
        request.setAttribute("studentPageInfo",studentPageInfo);
      request.setAttribute("studentClass",studentClass);
       request.getRequestDispatcher("/admin/admin_user.jsp").forward(request,response);
    }
    //删除学生
    public void deleteStudent(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String pageNum0 = request.getParameter("pageNum");
        String pageSize0 = request.getParameter("pageSize");
        String studentClass = request.getParameter("studentClass");
        String id = request.getParameter("id");
        if(null!=id){
            int i = TypeUtils.toInt(id);
            userService.deleteStudent(i);
            request.setAttribute("PageNum",pageNum0);
            request.setAttribute("pageSize",pageSize0);
            request.setAttribute("studentClass",studentClass);
        }
       request.getRequestDispatcher("/AdminServlet?action=ShowStudentPaging").forward(request,response);

    }
    //展示所有企业用户
    public void ShowUserPaging(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String pageNum0 = request.getParameter("pageNum");
        String pageSize0 = request.getParameter("pageSize");
        request.setAttribute("currentPage1",pageNum0);
        int pageNum = 0;
        int pageSize=0;
        if(pageNum0==null||pageSize0==null){
            pageNum=1;
            pageSize=7;
        }else {
            pageNum=TypeUtils.toInt(pageNum0);
            pageSize=TypeUtils.toInt(pageSize0);
        }
        PageInfo<User> userPageInfo = userService.ListUserPaging(pageNum, pageSize);
        request.setAttribute("userPageInfo",userPageInfo);
        request.getRequestDispatcher("/admin/admin_company.jsp").forward(request,response);
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}


