<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>JSP 연습문제 9번</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.14.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <%
        List<Map<String, String>> list = new ArrayList<>();
        Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); }};
        list.add(map);
        map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); }};
        list.add(map);


        String category = request.getParameter("category");
        if (category == null) category = "전체";
    %>



<div class="container wrap">
    <header class="head">
        <div class="display-4 text-center text-danger font-weight-bold">SK broadband IPTV</div>

        <nav class="navbar navbar-danger bg-danger">
            <a class="nav-link text-white" href="?category=전체">전체</a>
            <a class="nav-link text-white" href="?category=지상파">지상파</a>
            <a class="nav-link text-white" href="?category=드라마">드라마</a>
            <a class="nav-link text-white" href="?category=예능">예능</a>
            <a class="nav-link text-white" href="?category=영화">영화</a>
            <a class="nav-link text-white" href="?category=스포츠">스포츠</a>
        </nav>
    </header>



        <table class="table text-center">
            <thead>
                <tr>
                    <th scope="col">채널</th>
                    <th scope="col">채널명</th>
                    <th scope="col">카테고리</th>
                </tr>
            </thead>

            <tbody>
            <%
                for(Map<String, String> channel : list) {
                    if (category.equals("전체") || channel.get("category").equals(category)){
            %>
                <tr>
                    <td><%=channel.get("ch")%></td>
                    <td><%=channel.get("name")%></td>
                    <td><%=channel.get("category")%></td>
                </tr>
            <%
                    }
                }
            %>
            </tbody>
        </table>


        <footer class="d-flex align-items-center small justify-content-center">
            <div>Copyright 2021.marondal All Rights Reserved.</div>
        </footer>



    </div>

</body>
</html>
