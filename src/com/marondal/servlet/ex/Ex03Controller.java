package com.marondal.servlet.ex;

import com.sun.source.doctree.HiddenTree;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        // 이름과 생년월일을 전달 받고
        // 이름과 나이를 html로 구성한 페이지

        // request로부터 값을 전달 받는다
        // request 파라미터를 전달 받는다
        // request로부터 name 이라는 파라미터 이름으로 값을 꺼내 쓸테니 name 이라는 파라미터 이름으로 이름을 전달해라
        String name = request.getParameter("name");
        // request로부터 birthday 라는 파라미터 이름으로 생년월일을 꺼내 쓸테니 birthday 라는 파라미터 이름으로 생년월일을 전달해라
        String birthday = request.getParameter("birthday");
        String yearString = birthday.substring(0,4);
        int year = Integer.parseInt(yearString);

        // 이름과 나이를 응답의 형식으로 담는 방법
        // 데이트를 표현하기 위한 규격(문자열 규격)
        // 그러기 위해 사용되는 것: JSON(HavaScript Object Notation)
        // ["이름1","이름2","이름3"]
        // {"name":"이름1","age":23}

        int age = 2025 - year + 1;

        out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}");




        out.println("<html>\n" +
                "   <head><title>정보</title></head>\n" +
                "   <body>\n" +
                "       <h3> 이름 : " + name + "</h3>\n" +
                "       <h3> 나이 : " + age + "</h3>\n" +
                "   </body>\n" +
                "</html>");
    }
}
