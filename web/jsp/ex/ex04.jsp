<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>자료구조 다루기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <%
        List<String> fruitList = new ArrayList<>();

        fruitList.add("사과");
        fruitList.add("바나나");
        fruitList.add("딸기");
    %>

    <ul>
        <% for (String fruit:fruitList) {%>
        <li><%=fruit%></li>
        <% } %>
    </ul>

    <%
        // 학생들의 시험 성적을 관리
        // 학생별 과목별 시험 성적(국어: 90, 수학: 95, 영어: 80)

        List<Map<String, Integer>> scoreList = new ArrayList<>();

        // 국어, 수학, 영어라는 키를 가진 맵을 생성
        Map<String, Integer> score1 = new HashMap<>();
        score1.put("국어", 90);
        score1.put("수학", 95);
        score1.put("영어", 80);

        Map<String, Integer> score2 = new HashMap<>();
        score2.put("국어", 100);
        score2.put("수학", 85);
        score2.put("영어", 94);

        scoreList.add(score1);
        scoreList.add(score2);
    %>

    <table border="1">
        <thead>
            <tr>
                <th>국어</th>
                <th>수학</th>
                <th>영어</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>70</td>
                <td>40</td>
                <td>50</td>
            </tr>
            <tr>
                <td>30</td>
                <td>20</td>
                <td>40</td>
            </tr>
        </tbody>
    </table>




</body>
</html>
