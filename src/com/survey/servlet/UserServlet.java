package com.survey.servlet;

import com.survey.entity.Admin;
import com.survey.entity.Student;
import com.survey.entity.User;
import com.survey.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UserServlet")
public class UserServlet extends BaseServlet{
    private  static  UserServiceImpl userService=null;
static {
     userService = new UserServiceImpl();
}
    //退出登录
    public void logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
    request.getSession().removeAttribute("user");
        request.getSession().removeAttribute("firstTitles");
    response.sendRedirect("/Survey/login.jsp");
    }
    //学生登录
    public void stuLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String check = request.getParameter("check");
        Student student = userService.stuLogin(username, password);
      if(student!=null){
          request.getSession().setAttribute("user",student);
          request.getSession().setAttribute("tag",Integer.parseInt(check));
          request.getRequestDispatcher("/choose.jsp").forward(request,response);
      }
      else {
          request.getSession().setAttribute("check","1");
          request.getSession().setAttribute("msg","账号或密码错误!");
          request.getSession().setAttribute("uname",username);
          response.sendRedirect("/Survey/login.jsp");
      }

    }
    //企业登录
    public void userLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String check = request.getParameter("check");
        User user = userService.userLogin(username, password);
        if(user!=null){
            request.getSession().setAttribute("user",user);
            request.getSession().setAttribute("tag",Integer.parseInt(check));
            request.getRequestDispatcher("/choose.jsp").forward(request,response);
        }
        else {
            request.getSession().setAttribute("check","2");
            request.getSession().setAttribute("msg","账号或密码错误!");
            request.getSession().setAttribute("uname",username);
            response.sendRedirect("/Survey/login.jsp");
        }
    }
    //管理员登录
    public void adminLogin(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String check = request.getParameter("check");
        Admin admin = userService.adminLogin(username, password);
        if(admin!=null){
            request.getSession().setAttribute("user",admin);
            request.getSession().setAttribute("tag",Integer.parseInt(check));
            request.getRequestDispatcher("/choose.jsp").forward(request,response);
        }
        else {
            request.getSession().setAttribute("check","3");
            request.getSession().setAttribute("msg","账号或密码错误!");
            request.getSession().setAttribute("uname",username);
            response.sendRedirect("/Survey/login.jsp");
        }
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
