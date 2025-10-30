<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>Post Method</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <%
        // 닉네임 전달 받기
        String nickname = request.getParameter("nickname");

        String animal = request.getParameter("animal");

        String fruit = request.getParameter("fruit");

        String[] foodArray = request.getParameterValues("food");

        String foodString ="";
        for (String s : foodArray) {
            foodString += s + " ";
        }
    %>

    <h3><%=nickname%></h3>
    <h3><%=animal%></h3>
    <h3><%=fruit%></h3>
    <h3><%=foodString%></h3>
</body>
</html>
