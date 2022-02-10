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
import java.util.ArrayList;
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
        if(studentId!=null&&studentId!=""){
            request.setAttribute("studentId",studentId);
        }else {
            studentId=null;
        }
        if(studentClass!=null){
            if(studentClass.equals("全部班级")||studentClass==""){
                studentClass=null;
            }else {
                request.setAttribute("studentClass",studentClass);
            }
        }
        List<String> strings=new ArrayList<String>() {
        };
        if(  userService.ListAllClass().size()!=0){
            strings=userService.ListAllClass();
        }
        request.getSession().setAttribute("classRoom",strings);
        request.setAttribute("currentPage",pageNum0);
        int pageNum = 0;
        int pageSize=0;

        if(pageNum0==null&&pageSize0==null){
            pageNum=1;
            pageSize=7;
        }else if((null!=pageNum0)&&(null==pageSize0)){
            pageNum=TypeUtils.toInt(pageNum0);
            pageSize=7;
        } else {
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
        int pageNum0 = TypeUtils.toInt(request.getParameter("pageNum"));
        int size = TypeUtils.toInt(request.getParameter("size"));
        String pageSize0 = request.getParameter("pageSize");
        String studentClass = request.getParameter("studentClass");
        String id = request.getParameter("id");
        if(null!=id){
            int i = TypeUtils.toInt(id);
            userService.deleteStudent(i);
            if(size == 1){
                pageNum0--;
            }

        }
       request.getRequestDispatcher("/AdminServlet?action=ShowStudentPaging&pageNum="+pageNum0+"&pageSize="+pageSize0+"&studentClass="+studentClass).forward(request,response);
    }
    //添加学生
    public void addStudent(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String pageNum = request.getParameter("pageNum");
        String stuId = request.getParameter("stuId");
        String stuName = request.getParameter("stuName");
        String stuPwd = request.getParameter("stuPwd");
        String stuClass = request.getParameter("stuClass");
        String sex = request.getParameter("sex");
        int i=0;
        int num=1;
        if(null!=sex){
             i = TypeUtils.toInt(sex);
        }
        if(null!=pageNum&&pageNum!=""){
            num = TypeUtils.toInt(pageNum);
        }
        Student student = new Student(stuId,stuName,stuPwd,stuClass,i);
        userService.insertStudent(student);
      response.sendRedirect("/Survey/AdminServlet?action=ShowStudentPaging&pageNum="+num);
    }
    //修改之前根据id查询学生信息,进行学生信息回显
    public void updateStudent(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String studentId = request.getParameter("studentId");
        String pageNum = request.getParameter("pageNum");
        int i=0;
        if(studentId!=null&&studentId!=""){
             i = TypeUtils.toInt(studentId);
        }
        Student student = userService.selectStuById(i);
        request.setAttribute("student",student);
        request.setAttribute("pageNum",pageNum);
        request.getRequestDispatcher("/admin/admin_userupdate.jsp").forward(request,response);
    }
    //修改学生
    public void updateStu(HttpServletRequest request, HttpServletResponse response) throws Exception {
        int i=0;
        int id=0;
        String studentId = request.getParameter("studentId");
        String stuId = request.getParameter("stuId");
        String stuName = request.getParameter("stuName");
        String stuPwd = request.getParameter("stuPwd");
        String stuClass = request.getParameter("stuClass");
        String sex = request.getParameter("sex");
        String pageNum = request.getParameter("pageNum");
        if(null!=sex){
           i = TypeUtils.toInt(sex);
        }
        if(null!=stuClass){
            id=TypeUtils.toInt(studentId);
        }
        Student student = new Student(id,stuId,stuName,stuClass,stuPwd,i);
        userService.updateStudent(student);
      response.sendRedirect("/Survey/AdminServlet?action=ShowStudentPaging&pageNum="+pageNum);

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
    //删除企业用户
    public void deleteUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String id = request.getParameter("id");
        String pageNum = request.getParameter("pageNum");
        int i=1;
        if(id!=null&&id!=""){
            i = TypeUtils.toInt(id);
        }
        userService.deleteUser(i);
        response.sendRedirect("/Survey/AdminServlet?action=ShowUserPaging&pageNum="+pageNum);
    }
    //添加企业用户
    public void addUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String pageNum = request.getParameter("pageNum");
        String firmName = request.getParameter("firmName");
        String username = request.getParameter("username");
        String userPwd = request.getParameter("userPwd");
        User user = new User(firmName,username,userPwd);
        userService.insertUser(user);
        response.sendRedirect("/Survey/AdminServlet?action=ShowUserPaging&pageNum="+pageNum);
    }
    //修改之前根据id查询企业用户信息,进行回显
    public void firstQueryUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String pageNum = request.getParameter("pageNum");
        String id = request.getParameter("id");
        int i=1;
        if(id!=null&&id!=""){
            i = TypeUtils.toInt(id);
        }
        User user = userService.selectUserById(i);
        request.setAttribute("user",user);
        request.setAttribute("pageNum",pageNum);
        request.getRequestDispatcher("/admin/admin_companyupdate.jsp").forward(request,response);
    }
    public void updateUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String pageNum = request.getParameter("pageNum");
        String id = request.getParameter("id");
        String firmName = request.getParameter("firmName");
        String username = request.getParameter("username");
        String userPwd = request.getParameter("userPwd");
        int i=1;
        if(id!=null&&id!=""){
            i = TypeUtils.toInt(id);
        }
        User user = new User(i, firmName, username, userPwd);
        userService.updateUser(user);
        response.sendRedirect("/Survey/AdminServlet?action=ShowUserPaging&pageNum="+pageNum);

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


