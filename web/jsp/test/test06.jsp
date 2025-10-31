<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2 class="text-center">장 목록</h2>

        <table class="table text-center">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>품목</th>
                </tr>
            </thead>

            <tbody>
                <% List<String> goodsList = Arrays.asList(new String[]{
                        "저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
                });

                for (int i = 0; i < goodsList.size(); i++) {
                %>
                <tr>
                    <th scope="row"><%=i + 1%></th>
                    <td><%=goodsList.get(i)%></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
</body>
</html>
