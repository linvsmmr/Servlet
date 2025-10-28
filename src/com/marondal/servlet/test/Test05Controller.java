package com.marondal.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter();

        String number = request.getParameter("number");
        int intNumber = Integer.parseInt(number);

        out.println("<html>" +
                "<head>" + number + "단 </head>\n" +
                "<body>\n" +
                "   <ul>\n");


        for (int i = 1; i <= 9; i++) {
            out.println("       <li>" + number + " X " + i + " = " + (intNumber * i) + "</li>\n");
        }


        out.println("   </ul>\n" +
                "</body>");




    }
}
