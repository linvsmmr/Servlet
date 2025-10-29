<%--
  Created by IntelliJ IDEA.
  User: Mega
  Date: 2025-10-29
  Time: 오후 5:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>체격 조건 결과</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <%
        String height = request.getParameter("height");
        String weight = request.getParameter("weight");

        int intHeight = Integer.parseInt(height);
        int intWeight = Integer.parseInt(weight);
        float BMI = (float) (intWeight / ((intHeight/100.0) * (intHeight/100.0)));

        String result = null;

        if (BMI < 18.5) {
            result = "저체중";
        } else if (BMI > 18.5 && BMI < 25) {
            result = "정상";
        } else if (BMI > 25 && BMI < 30) {
            result = "과체중";
        } else {
            result = "비만";
        }
    %>

    <h3><b>BMI 측정 결과</b></h3>
    <h1>당신은 <span style="color:dodgerblue"> <%=result%></span> 입니다.</h1>
    <h6>BMI 수치 : <%=BMI%></h6>

</body>
</html>
