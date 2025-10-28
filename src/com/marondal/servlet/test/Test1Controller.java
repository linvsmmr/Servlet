package com.marondal.servlet.test;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test1Controller extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/plain");

        PrintWriter out = response.getWriter();

        Date now = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 dd일");

        String nowDate = formatter.format(now);
        out.println("오늘의 날짜는 " + nowDate);
    }
}
