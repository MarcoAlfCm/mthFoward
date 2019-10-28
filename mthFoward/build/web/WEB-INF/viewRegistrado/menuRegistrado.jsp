<%-- 
    Document   : menuRegistrado
    Created on : 27/10/2019, 05:54:28 PM
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
            <div class="col s12 card-panel row" style=" position: fixed; word-wrap: break-word; top: -10px; background: black; height:55px" >

                <div class="col s12 right-align" style="margin-top: 10px">
                    <button type="button" class="btn red" onclick="location.href = 'Cerrar'" >Cerrar sesión</button>
                </div>

            </div>
            <div class="container section  " >
                <a style=" position: fixed; top: 8px; left: 55px; word-wrap: break-word" id="nav" data-target="barra"  class="sidenav-trigger btn-floating black "  >
                    <i  class="material-icons">menu</i>
                </a>

                <ul class="sidenav fixed collapsible" id="barra" style=" background-color: black" >

                    <li><br></li>
                    <li><a href="miCuenta" style="color:white">Mi cuenta <i class="material-icons" style="color:white">tag_faces</i></a></li>
                    <li><div class="divider"></div></li>
                    <li><a href="publicados" style="color:white">Ver mis publicaciones <i class="material-icons" style="color:white">assignment</i></a></li>
                    <li><div class="divider"></div></li>
                    <li><a href="agregarPublicacion" style="color:white">Agregar nueva publicación <i class="material-icons" style="color:white">exposure_plus_1</i></a></li>
                    <li><div class="divider"></div></li>
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
                            
                            var elems = document.querySelectorAll('select');
                            var instances = M.FormSelect.init(elems);
                        });



        </script>
    </body>
</html>
