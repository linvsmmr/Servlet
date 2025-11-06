package com.marondal.db.test;

import com.marondal.common.MysqlService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/db/url/delete")

public class Test02DeleteController extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/plain");

        PrintWriter out = response.getWriter();

        String id = request.getParameter("id");

        MysqlService mysqlService = MysqlService.getInstance();

        mysqlService.connect();

        mysqlService.update("DELETE FROM `favorites`\n" +
                "WHERE `id` = " + id + ";");

        mysqlService.disconnect();

        response.sendRedirect(("/db/url/urlList.jsp"));


    }
}


