<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>계산기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <form  method="post" action="/jsp/test/test04.jsp">
        <h2>사칙 연산</h2>
            <input type="text" name="number1" class="form-control-sm">
            <select name="sign">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="X">X</option>
                <option value="÷">÷</option>
            </select>
            <input type="text" name="number2" class="form-control-sm">

        <button type="submit" class="btn btn-success">계산</button>
    </form>

</body>
</html>
