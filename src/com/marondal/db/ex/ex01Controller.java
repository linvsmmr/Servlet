package com.marondal.db.ex;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/db/ex/ex01")

public class ex01Controller extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/plain");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();

        // DB 서버접속
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());


            //접속 정보 준비
            // 서버 접속 주소, 포트, 사용할 DB, 사용자이름, 비번
            String url = "jdbc:mysql://localhost:3306/eunbi";
            String username = "root";
            String password = "root";

            //접속 및 접속 관리 객체 얻기
            Connection connection = DriverManager.getConnection(url, username, password);

            // 쿼리 수행
            String query = "SELECT * FROM `booking`;";
            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery(query);

            while(resultSet.next()) {
                //제목, 가격, 설명
                String name = resultSet.getString("name");
                String state = resultSet.getString("state");


                out.println("제목 : " + name + " 설명 : " + state);
            }

            query = "INSERT INTO `booking`\n" +
                    "(`name`, `headcount`, `day`, `date`, `phone_number`, `state`)\n" +
                    "VALUE\n" +
                    "('이은비', 6, 1, '2025-11-05', '010-2222-0000', '확정' );";

            statement = connection.createStatement();
            //실행된 행의 개수 리턴
            int count = statement.executeUpdate(query);

            out.println("저장된 행 : " + count);

            statement.close();
            connection.close();




        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
