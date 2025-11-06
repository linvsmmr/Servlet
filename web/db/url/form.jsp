<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>즐겨찾기 추가</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form method="post" action="/db/url/insert">
        <h2>즐겨찾기 추가</h2>
        <label>사이트명: </label>
        <br>
        <input type="text" class="form-control-sm" name="name">
        <br>
        <label>사이트 주소: </label>
        <br>
        <input type="text" class="form-control-sm" name="url">
        <br>
        <button type="submit" class="btn btn-success mt-4">추가</button>
    </form>
</body>
</html>
