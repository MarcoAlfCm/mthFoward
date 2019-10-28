<%-- 
    Document   : menuVisitante
    Created on : 26/10/2019, 07:04:59 PM
    Author     : zero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <style >
        .bor{
            border-radius: 7px
        }
    </style>
    <body>
        <div class="col s12 row">
            <div class="col s12 card-panel row" style=" position: fixed; word-wrap: break-word; top: -10px; background: black" >
                <div class="col s2">
                    <a href="http://localhost:8080/mthFoward/" style=" position: fixed; word-wrap: break-word; margin-top: 10px" class="sidenav-trigger btn-floating black "  >
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
                    <button class="btn green" onclick="location.href='publicados'" >Ingresar</button>
                </div>
                <div class="col s1" style="margin-top: 10px">

                </div>
            </div>
            <div class="container section  " >
                <a style=" position: fixed; top: 8px; left: 55px; word-wrap: break-word" id="nav" data-target="barra"  class="sidenav-trigger btn-floating black "  >
                    <i  class="material-icons">menu</i>
                </a>

                <ul class="sidenav fixed collapsible" id="barra" style=" background-color: black" >

                    <li><br></li>
                    <li><a href="categorias" style="color:white">Publicaciones <i class="material-icons" style="color:white">assignment</i></a></li>
                    <li><div class="divider"></div></li>
                    <!--                    <li><a href="verEvaluaciones" style="color:white">Evaluaciones <i class="material-icons" style="color:white">list</i></a></li>
                                        <li><a href="examenResulta" style="color:white">Resultados evaluaciónes <i class="material-icons" style="color:white">playlist_add_check</i></a></li>
                                        <li><div class="divider"></div></li>
                                        <li><a href="verReactivos" style="color:white">Ver reactivos<i class="material-icons"style="color:white"> list</i></a></li>-->
                </ul>
            </div>
        </div>
        <script type="text/javascript" src="js/jquery-2.2.1.min.js"></script>        
        <script src="js/materialize.min.js"></script>

        <div class="col s12  container section row" >
            <jsp:include page="${url}" flush="true"/>
        </div>

        <script type="text/javascript">

            document.addEventListener('DOMContentLoaded', function () {
                var elems = document.querySelectorAll('.sidenav');
                var instances = M.Sidenav.init(elems);

                var elems = document.querySelectorAll('.tooltipped');
                var instances = M.Tooltip.init(elems);
            });



        </script>
    </body>
</html>
