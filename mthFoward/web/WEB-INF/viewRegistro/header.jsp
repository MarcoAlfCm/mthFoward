<%-- 
    Document   : header
    Created on : 25/10/2019, 03:08:59 PM
    Author     : zero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" type="image/x-icon" href="${Apphelper.Helper.baseUrl}images/test.png">
        <link rel="stylesheet" href="${Apphelper.Helper.baseUrl}css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    </head>
    <body>
        <div class="col s12 row ">
            <div class="col s12 card-panel" style=" position: fixed; word-wrap: break-word; top: -10px;z-index: 100; background: black" >
                <div class="col s2">
                    <a href="http://localhost:8080/mthFoward/" style=" position: fixed; word-wrap: break-word; margin-top: 10px" id="nav" href="" data-target="barra"  class="sidenav-trigger btn-floating black "  >
                        <i  class="material-icons">home</i>
                    </a>
                </div>
                <div class="col s4">

                </div>
                <div class="col s2">
                    <input type="text" style="border-bottom-color: #ffffff; color: white" placeholder="Usuario">
                </div>
                <div class="col s2">
                    <input type="password" style=" border-bottom-color:#ffffff ; color: white" placeholder="Contraseña">
                </div>
                <div class="col s1" style="margin-top: 10px">
                    <button class="btn green" >Ingresar</button>
                </div>
                <div class="col s1" style="margin-top: 10px">

                </div>
            </div>
            <script type="text/javascript" src="${Apphelper.Helper.baseUrl}js/jquery-2.2.1.min.js"></script>

            <div class="col s12  container section row">
                <jsp:include page="${url}" flush="true"/>
            </div>

        </div>
    </body>
</html>
