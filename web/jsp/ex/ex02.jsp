<%--
  Created by IntelliJ IDEA.
  User: Mega
  Date: 2025-10-29
  Time: 오후 5:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get Method</title>
</head>
<body>

    <%
        // 이름과 생년월일을 전달받고 이름과 나이로 테이블을 구성하기
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");

        String year = birthday.substring(0,4);
        int intYear = Integer.parseInt(year);

        int age = 2025 - intYear + 1;
    %>
    <h2>정보</h2>
    <table border="1">
    <tr>
        <th>이름</th>
        <td><%=name%></td>
    </tr>
    <tr>
        <th>나이</th>
        <td><%=age%></td>
    </tr>
    </table>
</body>
</html>
