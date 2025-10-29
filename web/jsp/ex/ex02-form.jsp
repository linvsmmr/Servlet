<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>정보 입력</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <h3>입력</h3>
    <form method="get" action="/jsp/ex/ex02.jsp">
        <label>이름</label><input type="text" name="name">
        <label>생년월일</label><input type="text" name="birthday">
        <button type="submit">입력</button>
    </form>

</body>
</html>
