<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Mega
  Date: 2025-10-29
  Time: 오후 4:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test01</title>
</head>
<body>
    <h3>1. 점수들의 평균 구하기</h3>
    <%
        int[] scores = {80, 90, 100, 95, 80};
        float sum = 0;
        float average = 0;
        for (int i : scores) {
            sum += i;
        }

        average = sum / scores.length;
    %>
    <h4>점수 평균은 <%=average%>입니다.</h4>


    <h3>2. 채점 결과</h3>
    <%
        List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});

        int score = 0;
        for (int i = 0; i < scoreList.toArray().length; i++) {
            if (scoreList.get(i).contains("O")) {
                score += 10;
            }
        }
    %>

    <h4>채점 결과는 <%=score%>점 입니다.</h4>


    <h2>3. 1부터 N까지의 합계를 구하는 함수</h2>
    <%!
        int sum = 0;
        public int getNumber(int number) {
            for (int i = 1; i <= number; i++) {
                sum += i;
            }
            return sum;
        }
    %>

    <%
        int result = getNumber(50);
    %>

    <h4>1에서 50까지의 합은 <%=result%></h4>


    <h2>4. 나이 구하기</h2>
    <%
        String birthday = "20010820";
        String year = birthday.substring(0,4);

        int intYear = Integer.parseInt(year);

        int age = 2025 - intYear + 1;
    %>

    <h2><%=birthday%>의 나이는 <%=age%>살 입니다.</h2>

</body>
</html>
