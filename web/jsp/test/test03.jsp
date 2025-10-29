<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.ZoneId" %>
<%@ page import="java.time.Month" %>
<%@ page import="java.time.LocalTime" %><%--
  Created by IntelliJ IDEA.
  User: Mega
  Date: 2025-10-29
  Time: 오후 5:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>현재 날짜 및 시간 출력</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <%

        String getnow = request.getParameter("now");
        LocalDate now = LocalDate.now();
        int year = now.getYear();
        int month = now.getMonthValue();
        int day = now.getDayOfMonth();

        LocalTime nowTime = LocalTime.now();
        int hour = nowTime.getHour();
        int minute = nowTime.getMinute();
        int second = nowTime.getSecond();

    %>

    <div class="container">
        <% if(request.getParameter("now").equals("time")) {
        %>

        <div class="display-2">오늘 날짜 <b><%=year%></b>년 <b><%=month%></b>월 <b><%=day%></b>일</div>

        <%
            } else if (request.getParameter("now").equals("date")) {
        %>
        <div class="display-2">현재 시간 <b><%=hour%></b>시 <b><%=minute%></b>분 <b><%=second%></b>초</div>
        <%
            }
        %>
    </div>

</body>
</html>
