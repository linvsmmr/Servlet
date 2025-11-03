<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body>
    <%
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); }};
        list.add(map);
        map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); }};
        list.add(map);
        map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); }};
        list.add(map);
        map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); }};
        list.add(map);
        map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); }};
        list.add(map);
        map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); }};
        list.add(map);
        map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); }};
        list.add(map);

        String menu = request.getParameter("menu");
        String filter = request.getParameter("filter");

    %>


    <div class="container">
        <h2 class="text-center">검색 결과</h2>
            <table class="table text-center">
                <thead>
                    <tr>
                        <th scope="col">메뉴</th>
                        <th scope="col">상호</th>
                        <th scope="col">별점</th>
                    </tr>
                </thead>

                <tbody>
                    <% for(Map<String, Object> store : list) {
                        double point = (double) store.get("point");
                            if (menu.equals(store.get("menu"))) {
                                if (filter == null && point >= 4.0) {
                    %>
                        <tr>
                            <td><%=store.get("menu")%></td>
                            <td><%=store.get("name")%></td>
                            <td><%=store.get("point")%></td>
                        </tr>
                    <%              }
                                }
                        }
                    %>
                </tbody>
            </table>
    </div>



</body>
</html>
