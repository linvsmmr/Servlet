package com.marondal.servlet.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/servlet/test08")
public class Test08Controller extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String search = request.getParameter("search");



        List<String> list = new ArrayList<>(Arrays.asList(
                "강남역 최고 맛집 소개 합니다.",
                "오늘 기분 좋은 일이 있었네요.",
                "역시 맛집 데이트가 제일 좋네요.",
                "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
                "자축 저 오늘 생일 이에요."));


        out.println("" +
                "<html>" +
                "<head><title>검색 결과</title></head>\n" +
                "<body>");


//        for (int i = 0; i < 5; i++) {
//            if (list.get(i).contains(search)) {
//                out.println(list.get(i));
//                out.println("<hr>");
//            }
//        }

        for (String text:list) {
            if (text.contains(search)) {
                String boldText = text.replace(search, "<b>" + search + "</b>");
                out.println("<div>" + boldText + "</div>");
                out.println("<hr>");
            }
        }


        out.println("</body>" +
                "</html>");

    }
}
