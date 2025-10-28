package com.marondal.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter();


        out.println("<html>\n" +
                "<head>\n" +
                "   <h1>[단독] 고양이가 야옹해</h1>\n" +
                "   <h5>기사 입력시간 : 2021/03/27 06:07:04<h5>\n" +
                "</head>\n" +
                "<hr / >\n" +
                "<body>끝</body>\n" +
                "</html>");


    }
}
