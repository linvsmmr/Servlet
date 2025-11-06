<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>사용자 추가</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <h3>사용자 추가</h3>
    <form method="post" action="/db/user/insert">
        <label>이름</label><input type="text" name="name"> <br>
        <label>생년월일</label><input type="text" name="birthday"><br>
        <label>이메일</label><input type="text" name="email"> <br>
        <label>자기소개</label>
        <textarea rows="10" cols="50" name="introduce"></textarea>
        <button type="submit">추가</button>
    </form>

</body>
</html>
