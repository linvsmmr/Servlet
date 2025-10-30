<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>Post Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
<form method="post" action="/jsp/ex/ex03.jsp">
    <h4>닉네임을 정하세요</h4>
    <label>닉네임</label><input type="text" name="nickname"><br>

    <br>

    <h4>좋아하는 동물을 고르세요</h4>
    <label><input type="radio" name="animal" value="cat">고양이</label>
    <label><input type="radio" name="animal" value="dog">강아지</label>
    <label><input type="radio" name="animal" value="otter">수달이</label><br>

    <br>

    <h4>좋아하는 과일을 고르세요</h4>
    <select name="fruit">
        <option value="banana">바나나</option>
        <option value="strawberry">딸기</option>
        <option>복숭아</option>
    </select>

    <br>

    <h4>좋아하는 음식을 고르세요</h4>
    <label>민트초코<input type="checkbox" name="food" value="mint"></label>
    <label>하와이안 피자<input type="checkbox" name="food" value="pizza"></label>
    <label>번데기<input type="checkbox" name="food" value="pupa"></label>


    <br>

    <button type="submit">입력</button>
</form>
</body>
</html>
