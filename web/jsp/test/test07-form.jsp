<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>메뉴 검색</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>

    <form method="get" action="/jsp/test/test07.jsp">
        <h2>메뉴검색</h2>
        <input type="text" class="form-control-sm" name="menu">
        <label><input type="checkbox" name="point" value="O">4점 이하 제외</label>

        <br>

        <button type="submit" class="btn btn-success mt-4">검색</button>
    </form>


</body>
</html>
