<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>길이 변환</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <h2>길이 변환</h2>
    <br>

    <div class="d-flex">
        <form method="post" action="/jsp/test/test05.jsp">
            <label><input type="text" name="centimeter" class="form-control-sm">cm</label>

            <br>

            <label>인치<input type="checkbox" name="unit" value="inch"></label>
            <label>야드<input type="checkbox" name="unit" value="yard"></label>
            <label>피트<input type="checkbox" name="unit" value="feet"></label>
            <label>미터<input type="checkbox" name="unit" value="meter"></label>

            <br>

            <button type="submit" class="btn btn-success">변환</button>


        </form>
    </div>
</body>
</html>
