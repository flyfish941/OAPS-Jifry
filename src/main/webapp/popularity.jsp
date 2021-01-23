<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Articles</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type="text/css">

        body {
            margin: 0px;
        }

        header {
            background-color: dodgerblue;
            text-align: center;
            height: 70px;
            margin-bottom: 50px;
        }

        header nav {
            padding-top: 20px;
        }

        header a {
            font-size: 25px;
            margin-left: 25px;
            text-decoration: none;
            color: white;
            cursor: default;
        }

        header a:hover {
            color: gold;
            text-decoration: none;
        }

        header form {
            display: inline-block;
        }

        header select {
            margin-left: 25px;
            font-size: 25px;
            border-radius: 3px 3px 3px 3px;
        }

        header button {
            font-size: 20px;
            border-radius: 5px 5px 5px 5px;
        }

        header input {
            margin-left: 25px;
            font-size: 20px;
            border-radius: 3px 3px 3px 3px;
        }

        div {
            width: 80%;
            margin: 50px auto;
        }

        .table2 {
            width: 100%;
        }

        .table2 th {
            border: 1px solid gray;
            border-right: none;
            border-left: none;
            text-align: center;
            font-size: 20px;
            margin-bottom: 20px;
        }

        .table2 td {
            text-align: center;
            font-size: 20px;
        }

        .table2 a {
            text-decoration: none;
        }
        tr .redFont {
            color: red;
        }

        footer {
            background-color: dodgerblue;
            height: 40px;
            color: white;
            text-align: center;
            padding: 5px;
            font-size: 20px;
            margin-top: 50px;
        }

    </style>
</head>
<body>

<header>
    <nav>
        <a href="Controller?page=home">Home</a>
        <a href="Controller?page=aboutus">About us</a>
        <a href="Controller?page=contact">Contact</a>
        <a href="Controller?page=admin">Admin</a>

        <form action="Controller" method="post">
            <input type="hidden" name="page" value="select">
            <select name="option">
                <option value="Articles">Articles</option>
            </select>
            <button>go</button>
        </form>

        <form action="Controller" method="post">
            <input type="hidden" name="page" value="search">
            <input type="text" name="search2" required>
            <button>search</button>
        </form>
    </nav>
</header>


<div>
    <table class="table2">
        <tr>
            <th>Title</th>
            <th>CommentNum</th>
            <th>LikesNum</th>
            <th>DislikesNum</th>
            <th>VisitNum</th>
            <th>AgeInDays</th>
            <th class="redFont">Popularity</th>
        </tr>
        <c:forEach var="pop" items="${popList}">
            <tr>
                <td><a href="Controller?page=view-article&title=${ pop.title}&id=${pop.aid}"> <c:out
                        value="${ pop.title}"></c:out> </a></td>
                <td>${pop.commentNum}</td>
                <td>${pop.likesNum}</td>
                <td>${pop.dislikeNum}</td>
                <td>${pop.visitNum}</td>
                <td>${pop.intDayDis}</td>
                <td class="redFont">${pop.intPop}</td>
            </tr>
        </c:forEach>

    </table>
</div>


<footer>
    2020 copyright&copy;Wu Zhongfu
</footer>

</body>
</html>