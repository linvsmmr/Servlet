package com.marondal.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/servlet/test06")

public class Test06Controller extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("application/json");

        PrintWriter out = response.getWriter();


        String number1 = request.getParameter("number1");
        String number2 = request.getParameter("number2");
        int num1 = Integer.parseInt(number1);
        int num2 = Integer.parseInt(number2);



        out.println("{\n" +
                "   \"addition\": " + (num1+num2) + ",\n" +
                "   \"substraction\": " + (num1-num2) + ",\n" +
                "   \"multiplication\": " + (num1 * num2) + ",\n" +
                "   \"division\": " + (num1 / num2) + "\n" +
                "}");


    }
}
