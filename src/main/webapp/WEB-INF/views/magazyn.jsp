<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Insert title here</title>
        <style>
            body {
                background-color: #FAFAFA;
                font-family: Arial;
            }

            form {
                font-family: Arial;
                margin-left: 10px;padding:0px;    
            }
            table {
                width:800px;
                height:90%;
                margin-left: 0px;padding:0px;
            }
            table.b {
                width:300px;
                height:10%;
                margin-left: 0px;padding:0px;
            }
            td.a {
                background:-o-linear-gradient(bottom, #56aaff 10%, #82c0ff 100%);	
                background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #56aaff), color-stop(1, #82c0ff) ); 
                background:-moz-linear-gradient( center top, #56aaff 10%, #82c0ff 100% );
                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#56aaff", endColorstr="#82c0ff");	
                background: -o-linear-gradient(top,#FFFFF,82c0ff);
                background-color:#56aaff;
                border:1px solid #000000;
                border-width:0px 1px 1px 0px;
                text-align:left;
                padding:7px;
                font-size:12px;
                font-family:Arial;
                font-weight:bold;
                color:#000000;
            }
            td.b {

                background-color:#eeeeee;
                border:1px none;
                border-width:0px 1px 1px 0px;
                text-align:left;
                padding:7px;
                font-size:12px;
                font-family:Arial;
                font-weight:bold;
                color:#000000;
            }
            td.c {
                background:-o-linear-gradient(bottom, #D6D6C1 5%, #FFFFFF 100%);	
                background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #D6D6C1), color-stop(1, #FFFFFF ) ); 
                background:-moz-linear-gradient( center top, #D6D6C1 5%, #FFFFFF 100% );
                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#D6D6C1", endColorstr="#FFFFFF");	
                background: -o-linear-gradient(top,#FFFFF,82c0ff);
                background-color:#56aaff;
                border:1px solid #000000;
                border-width:0px 1px 1px 0px;
                text-align:left;
                padding:7px;
                font-size:12px;
                font-family:Arial;
                font-weight:bold;
                color:#000000;
            }
            #left {
                line-height:50px;
                background-color:#eeeeee;
                height:1000px;
                width:400px;
                float:left;
                padding-left:10px;
            }
            #right {
                width:0px;
                float:left;
                padding:10px;
            }
            h3 {
                text-align: center;
            }

        </style>
    </head>
    <body>
        <div id="left">
            <h3>Nowa pozycja</h3>
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
                    </tr class="b">
                    <tr class="b">
                        <td class="b">Ilosc:</td>     <td class="b"><form:input path="ilosc" /></td>
                    </tr>
                    <tr class="b">
                        <td class="b">Kategoria:</td> <td class="b"><form:input path="kategoria" /></td>
                    </tr>
                    <br>
                </table>
                <input type="submit" value="Dodaj" formaction="magazyn"
                       formmethod="post" />



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