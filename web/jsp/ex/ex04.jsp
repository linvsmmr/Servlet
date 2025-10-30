<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>자료구조 다루기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <%
        List<String> fruitList = new ArrayList<>();

        fruitList.add("사과");
        fruitList.add("바나나");
        fruitList.add("딸기");
    %>

    <ul>
        <% for (String fruit:fruitList) {%>
        <li><%=fruit%></li>
        <% } %>
    </ul>

</body>
</html>
