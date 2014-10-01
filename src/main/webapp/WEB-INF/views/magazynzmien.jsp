<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Insert title here</title>
        <style>
            body {
                font-family: Arial;
            }
            #content {
                margin-left: auto;
                margin-right: auto;
                background-color:#eeeeee;
                height:500px;
                width:500px;
                float:none;
                padding:0px;
            }
            table.b {
                width:300px;
                height:400px;
                margin-top: auto;
                margin-left: auto;
                margin-right: auto;

            }
            td.b {
                border:1px none;
                border-width:1px 1px 1px 1px;
                text-align:left;
                padding-left:0px;
                font-size:12px;
                font-family:Arial;
                font-weight:bold;
                color:#000000;
            }
            h3 {
                text-align: center;
                padding-top: 20px;
            }
        </style>
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