<%--
  Created by IntelliJ IDEA.
  User: Dima
  Date: 23.12.2019
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Every user Statistic</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="/res/user/mycont.css" rel="stylesheet" type="text/css">
    <link href="/res/user/link.css" rel="stylesheet" type="text/css">
    <link href="/res/user/table.css" rel="stylesheet" type="text/css">
    <link href="/res/user/button.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="mycont">
    <div class="margin-top8">

        <div class="row">
            <div class="col">
                <div class="mycont">

                    <table class="blueTable">
                        <thead>
                        <tr>
                            <th>Ф.И.О.</th>
                            <th>Название теста</th>
                            <th>Пройдено всего раз</th>
                            <th>Процент правильных ответов на все вопросы</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${statistic}" var="item">
                        <tr>
                            <td> ${item.FIO} </td>
                            <td> ${item.name} </td>
                            <td> ${item.countCompleted} </td>
                            <td> ${item.percent} </td>
                        </tr>
                        </c:forEach>
                </div>
                </table>

            </div>
        </div>
    </div>

    <div class="row">
        <div class="col">
            <div class="mycont somefont">
                <form action="/goHomeAdmin">
                    <input class="myButton" type="submit" value="Главная">
                </form>
            </div>
        </div>
    </div>

</div>
</div>

</body>
</html>
