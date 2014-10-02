<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
    <head>
        <title>Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="${pageContext.request.contextPath}/resources/styl.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="nav">
            <div class="container">
                <ul class="pull-left">
                    <li><a href="#">HOME</a></li>
                    <li><a href="<c:url value="/magazyn" />">MAGAZYN</a></li>
                </ul>
                <ul class="pull-right">
                    <li><a href="#">ZALOGUJ SI&#280;</a></li>
                    <li><a href="#">POMOC</a></li>
                </ul>
            </div>
        </div>

        <div class="jumbotron">
            <div class="container-jumbotron">
                <h1>Magazyn elementów elektronicznych</h1> 
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <a href="<c:url value="/magazyn" />">Przejd&#378; do magazynu</a>
            </div>
        </div> 
        <div class="time">
            <div class="container">
                <h4>The time on the server is ${serverTime}</h4>
            </div>
        </div>
    </body>
</html>