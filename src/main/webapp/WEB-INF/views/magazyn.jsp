<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/resources/styl-magazyn.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Insert title here</title>
        <!--    <style>
                    
                </style>-->
    </head>
    <body>
        <div id="left">
            <h3>Nowa pozycja magazynowa</h3>
            <form:form modelAttribute="towar">
                <table class="b">
                    <tr class="b">
                        <td class="b">Nazwa:</td>     <td class="b"><form:input path="nazwa" /></td>
                    </tr>
                    <tr class="b">
                        <td class="b">Opis:</td>      <td class="b"><form:input path="opis" /></td>
                    </tr>
                    <tr class="b">
                        <td class="b">Cena:</td>      <td class="b"><form:input path="cena" /></td>
                    </tr>
                    <tr class="b">
                        <td class="b">Ilosc:</td>     <td class="b"><form:input path="ilosc" /></td>
                    </tr>
                    <tr class="b">
                        <td class="b">Kategoria:</td> <td class="b"><form:input path="kategoria" /></td>
                    </tr>
                    <tr class="b">
                        <td class="b"></td> <td class="b"></td>
                    </tr>
                    <tr class="b">
                        <td class="b"><input type="submit" value="Dodaj" formaction="magazyn"
                                             formmethod="post" /></td> <td class="b"></td>
                    </tr>
                </table>




            </form:form>
            <br> <br>
            <form action="magazyn" method="get">
                <input type="text" value=".*" name="wyrazenie" ><br> 
                <select name="kategoria">
                    <option value="1" >Nazwa</option>
                    <option value="2" >Opis</option>
                    <option value="5" >Kategoria</option>
                </select><br><br>
                <input type="submit" name="filter" value="Filtruj" >

            </form>
        </div>
        <div id="right">
            <table>
                <tr>
                    <td class="a"><a href="magazyn?sort=0">Id</a></td>
                    <td class="a"><a href="magazyn?sort=1">Nazwa</a></td>
                    <td class="a"><a href="magazyn?sort=2">Opis</a></td>
                    <td class="a"><a href="magazyn?sort=3">Cena</a></td>
                    <td class="a"><a href="magazyn?sort=4">Ilosc</a></td>
                    <td class="a"><a href="magazyn?sort=5">Kategoria</a></td>
                    <td class="a">Usu&#324;</td>
                    <td class="a">Zmie&#324;</td>
                </tr>
                <c:forEach var="towar" items="${magazyn}">
                    <tr>
                        <td class="c"><c:out value="${towar.id + 1}" /></td>
                        <td class="c"><c:out value="${towar.nazwa}" /></td>
                        <td class="c"><c:out value="${towar.opis}" /></td>
                        <td class="c"><c:out value="${towar.cena}" /></td>
                        <td class="c"><c:out value="${towar.ilosc}" /></td>
                        <td class="c"><c:out value="${towar.kategoria}" /></td>
                        <td class="c"><a href="magazyn?id=${towar.id}&action=delete">Usu&#324;</a></td>
                        <td class="c"><a href="magazynzmien?id=${towar.id}&action=update">Zmie&#324;</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>

    </body>
</html>