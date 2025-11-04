<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <title>Melong</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%
    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");

    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    String detail = request.getParameter("detail");
%>
<div id="wrap">
    <header class="d-flex">
        <div class="logo col-2 d-flex align-items-center">
            <h1 class="text-success">Melong</h1>
        </div>
        <div class="search col-10 d-flex align-items-center">
            <form class="w-100" method="get" action="/jsp/test/test10/test10.jsp">
                <div class="input-group col-5">
                    <input type="text" class="form-control" name="detail">
                    <div class="input-group-append">
                        <button class="btn btn-success" type="submit">검색</button>
                    </div>
                </div>
            </form>
        </div>
    </header>
    <nav class="main-menu ">
        <ul class="nav font-weight-bold">
            <li class="nav-item"><a href="#" class="nav-link text-dark">멜롱챠트</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark">최신음악</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark">장르음악</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark">멜롱DJ</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark">뮤직 어워드</a></li>
        </ul>
    </nav>
    <section class="contents">
        <%
            for (Map<String, Object> info : musicList) {
                int time = (Integer) info.get("time");
                if (detail == null) {
        %>
        <div class="artist d-flex border border-success p-3">
            <div>
                <img width="150" alt="가수 썸네일" src="<%= artistInfo.get("photo") %>">
            </div>
            <div class="ml-4">
                <h2><%= artistInfo.get("name") %></h2>
                <div><%= artistInfo.get("agency") %></div>
                <div><%= artistInfo.get("debute") %>년 데뷔</div>
            </div>
        </div>
        <% break;
        } else if (detail.equals(info.get("title"))) { %>
        <div class="artist d-flex border border-success p-3">
            <div>
                <img width="300" alt="앨범 썸네일" src="<%= info.get("thumbnail") %>">
            </div>
            <div class="ml-4">
                <h2><%= info.get("title") %></h2>
                <div class="text-success"><%= info.get("singer") %></div>
                <div><%= info.get("album") %></div>
                <div><%= time / 60 %> : <%= time % 60 %></div>
                <div><%= info.get("composer") %></div>
                <div><%= info.get("lyricist") %></div>
            </div>
        </div>
        <%
                }
            }
        %>

        <%
            if (detail == null) {
        %>
        <div class="song-list mt-4">
            <h3>곡 목록</h3>
            <table class="table text-center table-sm">
                <thead>
                <tr>
                    <th>no</th>
                    <th>제목</th>
                    <th>앨범</th>
                </tr>
                </thead>
                <tbody>
                <% for(Map<String, Object> song:musicList) { %>
                <tr>
                    <td><%= song.get("id")%></td>
                    <td><a href="?detail=<%=song.get("title")%>"><%= song.get("title")%></a></td>
                    <td><%= song.get("album")%></td>
                </tr>
                <% } %>
                </tbody>
            </table>
        </div>
        <%
        } else {
        %>
        <h4 class="font-weight-bold mt-4">가사</h4>
        <hr>
        <div class="mb-4">가사 정보 없음</div>
        <%
            }
        %>
    </section>
    <footer>
        <hr>
        <div class="text-secondary">Copyright 2025. melong All Rights Reserved</div>
    </footer>
</div>

</body>
</html>
