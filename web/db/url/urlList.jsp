<%@ page import="com.marondal.common.MysqlService" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<meta charset="UTF-8">
<head>
    <title>즐겨찾기 리스트</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <div class="wrap">
        <%
            MysqlService mysqlService = MysqlService.getInstance();

            mysqlService.connect();

            List<Map<String,Object>> urlList = mysqlService.select("SELECT * FROM `favorites` ORDER BY `id` DESC;");

            mysqlService.disconnect();

        %>
            <table class="table text-center">
                <thead>
                    <tr>
                        <th>사이트</th>
                        <th>사이트 주소</th>
                        <th></th>
                    </tr>
                </thead>

                <tbody>
                <%
                    for (Map<String, Object> url : urlList) {
                %>
                    <tr>
                        <td><%=url.get("name")%></td>
                        <td><a href="<%=url.get("url")%>"><%=url.get("url")%></a></td>
                        <td><a href="/db/url/delete?id=<%=url.get("id")%>" class="btn btn-danger btn-sm" name="id">삭제</a></td>
                    </tr>
                <%
                    }
                %>
                </tbody>
            </table>
    </div>
</body>
</html>
