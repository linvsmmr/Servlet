<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>길이 변환 결과</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <h2>변환 결과</h2>
    <%
        String centimeter = request.getParameter("centimeter");
        String[] unitArray = request.getParameterValues("unit");

        // sb.append 메서드를 통해서 여러 값을 추가 및 관리할 수 있음
        StringBuilder sb = new StringBuilder();

        int intCentimeter = Integer.parseInt(centimeter);

        double meter = (double) intCentimeter / 100;
        double inch = intCentimeter / 2.54;
        double yard = intCentimeter / 91.44;
        double feet = intCentimeter / 30.48;



    %>

    <div class="display-6"><%=centimeter%>cm</div>
    <hr>
    <%
        for (int i = 0; i < unitArray.length; i++) {

            if (unitArray[i].equals("inch")) {
    %>

    <div class="display-6"><%=inch%> in</div>
    
    <%
            }
            if (unitArray[i].equals("yard")) {
    %>

    <div class="display-6"><%=yard%> yd</div>

    <%
            }
            if (unitArray[i].equals("feet")) {
    %>

    <div class="display-6"><%=feet%> ft</div>

    <%
            }
            if (unitArray[i].equals("meter")) {
    %>

    <div class="display-6"><%=meter%> m</div>

    <%
            }
        }
    %>



</body>
</html>
