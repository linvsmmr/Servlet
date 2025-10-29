<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <form method="get" action="/jsp/test/test02.jsp">
        <h3><b>체격 조건 입력</b></h3>
        <input type="text" class="form-control-sm" name="height"> <label>cm</label>
        <input type="text" class="form-control-sm" name="weight"> <label>kg</label>
        <button type="submit" class="btn btn-primary">계산</button>
    </form>

</body>
</html>
