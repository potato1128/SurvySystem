/**
 * Created by 土豆烧排骨
 * 2022/1/18 下午 11:25
 */


package com.survey.servlet;

import com.survey.common.Dbutils;
import com.survey.common.TypeUtils;
import com.survey.dao.FirstTitleMapper;
import com.survey.entity.FirstTitle;
import com.survey.service.FirstTitleService;
import com.survey.service.impl.FirstTitleServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ListServlet")
public class ListServlet extends BaseServlet {
    private static FirstTitleService firstTitleService;
    static {
        firstTitleService= new FirstTitleServiceImpl();

    }
   //在首页上展示firstTitle
    public void ListFirstTitle(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String eid = req.getParameter("eid");
        int i = TypeUtils.toInt(eid);
        req.getSession().removeAttribute("firs");
        List<FirstTitle> firstTitles = firstTitleService.listFirstTitle(i);
        req.getSession().setAttribute("firstTitles",firstTitles);
        req.getRequestDispatcher("/choose.jsp").forward(req,resp);

    }
    //展示secendTitle
    public void ListSecendTitle(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


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
