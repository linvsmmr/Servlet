package com.marondal.servlet.test;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Test02Controller extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/plain");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();

        Date now = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");

        String nowTime = formatter.format(now);

        out.println("현재 시각은 " + nowTime + " 입니다.");


    }

}
