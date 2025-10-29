<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Mega
  Date: 2025-10-28
  Time: 오후 6:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>기본 JSP 문법</title>
</head>
<body>
    <h3>기본 JSP 문법</h3>
    <!-- html 주석 : 브라우저에서도 보임 -->
    <%-- jsp 주석 : 서버에서 처리되고 사라짐 --%>
    <%-- 1부터 50까지의 합 구해서 h3 태그로 보여주기 --%>
    <%
        int sum = 0;
        for (int i = 1; i <= 50; i++) {
            sum += i;
        }
    %>
    <h3>합: <%=sum%></h3>


    <input type="text" value="<%=sum%>">


    <h3>리스트 다루기</h3>
    <%
        List<String> animalList = new ArrayList<>();

        animalList.add("고양이");
        animalList.add("강아지");

    %>

    <ul>
        <li><%=animalList.get(0)%></li>
        <li><%=animalList.get(1)%></li>
    </ul>


    <h3>메서드 만들기</h3>
    <%!
        public String getHelloWorld() {
            return "Hello World";
        }
    %>

    <%
        String message = getHelloWorld();
    %>

    <h4><%=message%></h4>
</body>
</html>
