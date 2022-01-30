package com.survey.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/CheckCodeServlet")
public class CheckCodeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        response.setCharacterEncoding("utf-8");

        String codeClient = request.getParameter("checkCode");
        HttpSession session = request.getSession();
        String checkCode = (String) session.getAttribute("checkCode");
        PrintWriter out = response.getWriter();
        if (checkCode.equals(codeClient)){
            System.out.println("正确");
            out.write("1");
        }else {
            System.out.println(checkCode);
            System.out.println(codeClient);
            out.write("0");
        }
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
