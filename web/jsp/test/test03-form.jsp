<%--
  Created by IntelliJ IDEA.
  User: Mega
  Date: 2025-10-29
  Time: 오후 6:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>날짜, 시간 링크</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <h2>날짜, 시간 링크</h2>
    <form method="get" action="/jsp/test/test03.jsp">
        <a href="http://localhost:8080/jsp/test/test03.jsp?now=time" class="btn btn-info">현재 시간 확인</a>
        <a href="http://localhost:8080/jsp/test/test03.jsp?now=date" class="btn btn-success">현재 날짜 확인</a>
    </form>


</body>
</html>
