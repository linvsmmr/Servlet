<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>계산기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>

    <%
        String number1 = request.getParameter("number1");
        String number2 = request.getParameter("number2");

        String sign = request.getParameter("sign");

        int intNumber1 = Integer.parseInt(number1);
        int intNumber2 = Integer.parseInt(number2);

        float result = 0;

        if (sign.equals("+")) {
            result = (float) intNumber1 + intNumber2;
        } else if (sign.equals("-")) {
            result = (float) intNumber1 - intNumber2;
        } else if (sign.equals("X")) {
            result = (float) intNumber1 * intNumber2;
        } else {
            result =  (float) intNumber1 / intNumber2;
        }
    %>

    <div class="display-6">계산 결과</div>
    <div class="display-2"><%=number1%> <%=sign%> <%=number2%> = <span style="color: cornflowerblue"> <%=result%></span></div>




</body>
</html>
