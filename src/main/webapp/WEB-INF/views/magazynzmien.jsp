<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
    <head>
        <link href="${pageContext.request.contextPath}/resources/styl-magazynzmien.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Insert title here</title>
<!--        <style>
            
        </style>-->
    </head>
    <body>
        <div id="content">
            <h3>Zmie&#324;</h3>
            <form:form modelAttribute="towar">
                
                <table class="b">
                    <tr class="b">
                        <td class="b">Nazwa:</td> <td class="b"><form:input path="nazwa" /></td>
                    </tr>
                    <tr class="b">
                        <td class="b">Opis:</td> <td class="b"><form:input path="opis" /></td>
                    </tr>

                    <tr class="b">
                        <td class="b">Cena:</td> <td class="b"><form:input path="cena" /></td>
                    </tr>

                    <tr class="b">
                        <td class="b">Ilosc:</td> <td class="b"><form:input path="ilosc" /></td>
                    </tr>

                    <tr class="b">
                        <td class="b">Kategoria:</td> <td class="b"><form:input path="kategoria" /></td>
                    </tr>
                    <tr class="b">
                        <td class="b"></td> <td class="b" style="text-align:right;"><input type="submit" value="Zmie&#324;" /></td>
                    </tr>
                </table>
                <form:hidden path="id"/>
            </form:form>
        </div>
    </body>
</html>