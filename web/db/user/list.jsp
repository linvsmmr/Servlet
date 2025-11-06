<%@ page import="com.marondal.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>사용자 리스트</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>

<%
    MysqlService mysqlService = MysqlService.getInstance();

    mysqlService.connect();

    List<Map<String,Object>> userList = mysqlService.select("SELECT * FROM `new_user`;");

    mysqlService.disconnect();

%>

    <h3>사용자 리스트</h3>

    <table border="1">
        <thead>
            <tr>
                <th>이름</th>
                <th>이메일</th>
                <th>자기소개</th>
            </tr>
        </thead>
        <tbody>
        <% for (Map<String,Object> user : userList) {%>
            <tr>
                <td><%= user.get("name") %></td>
                <td>ka@gmail.com</td>
                <td>안녕</td>
            </tr>

            <tr>
                <td>윈터</td>
                <td>winter@gmail.com</td>
                <td>안녕하세요</td>
            </tr>
        </tbody>
    </table>

</body>
</html>
