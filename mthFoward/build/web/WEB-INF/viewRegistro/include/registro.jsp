<%-- 
    Document   : login
    Created on : 23/10/2019, 09:18:14 PM
    Author     : zero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>




        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>


        <link rel="shortcut icon" type="image/x-icon" href="${Apphelper.Helper.baseUrl}images/test.png">
        <link rel="stylesheet" href="${Apphelper.Helper.baseUrl}css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">



    </head>

    <body >

        <div class="container row">
            <div class="container col s12" style="background: transparent">
                &nbsp;
            </div>
            <div  class="container col s12 right-align" style="background: transparent">
                <button id="al" class="btn red" >Alumnos</button>
                <!--<button id="doc" class="btn grey">Docentes</button>-->
                <button id="ad" class="btn grey">Administrador</button>
            </div>
            <div class="container col s12" style="background: transparent">
                &nbsp;
            </div>
            <div class="container col s12" style="background: transparent">
                &nbsp;
            </div><div class="container col s12" style="background: transparent">
                &nbsp;
            </div>
            <div  class="container col s6 offset-s3 z-depth-2" style="background: black" >
                <br>
                <div class="col s12 " style="text-align: center" id="loader" hidden="">
                    <img  src="${Apphelper.Helper.baseUrl}images/loader.gif"  width="100%">
                </div>
                <!-- Formulario login alumno -->
                <div class="container col s12 " id="formulario">
                    <!--                    <div class="col s12 " style="text-align: center">
                                            <img  src="${Apphelper.Helper.baseUrl}images/logo_uaq_plantilla_100_por_ciento_sn_crest.png">
                                        </div>-->
                    <div class="col s12">
                        <div class="col s12">
                            <p style="color:rgba(255,255,255);" >Expediente</p>
                        </div>
                        <div class="col s10">
                            <input type="text" id="usu"  onkeypress="pulsar(event); return valida(event)">
                        </div>
                    </div>
                    <div class="col s12">
                        <div class="col s12">
                            <p style="color:rgba(255,255,255);">Contraseña</p>
                        </div>
                        <div class="col s10">

                            <input type="password"  id="pass"  onkeypress="pulsar(event)">
                        </div>
                    </div>
                    <div class="col s12">
                        <div class="col s12">
                            <p style="color:rgba(255,255,255);">Confirmar contraseña</p>
                        </div>
                        <div class="col s10">

                            <input type="password"  id="pass"  onkeypress="pulsar(event)">
                        </div>
                    </div>
                </div>   
                <script type="text/javascript" src="${Apphelper.Helper.baseUrl}js/jquery-2.2.1.min.js"></script>
                <div class="col s12"id="in">
                    <a id="ingresar"  class="btn " style="background-color: #003399">Aceptar</a><br><br>
                </div>
            </div>
        </div>
    </body>
    <input type="text" id="tipo" value="E" hidden="">
    </br>   
    <script src="${Apphelper.Helper.baseUrl}js/materialize.min.js"></script>   
    <script src="${Apphelper.Helper.baseUrl}js/sweetalert2.all.min.js" crossorigin="anonymous"></script>

    <script type="text/javascript">

                                function valida(e) {
                                    var tecla = (document.all) ? e.keyCode : e.which;
                                    if (tecla === 8) {
                                        return true;
                                    }
                                    var patron = /[0-9]/;
                                    var tecla_final = String.fromCharCode(tecla);
                                    return patron.test(tecla_final);
                                }

                                function pulsar(e) {
                                    if (e.keyCode === 13 && !e.shiftKey) {
                                        e.preventDefault();
                                        $("#ingresar").click();
                                    }
                                }

                                jQuery(document).ready(function () {

                                    $("#al").click(function () {
                                        document.getElementById("exp").innerHTML = "Expediente"

                                        // $("#formularioma").slideUp(625);
                                        // $("#formularioad").slideUp(625);
                                        // $("#formulario").slideDown(625);
                                        document.getElementById("al").setAttribute("class", "btn red");
                                        // document.getElementById("doc").setAttribute("class", "btn grey");
                                        document.getElementById("ad").setAttribute("class", "btn grey");
                                        document.getElementById("mae").setAttribute("class", "btn grey");
                                        $("#tipo").val("E");
                                    });

                                    $("#doc").click(function () {
                                        $("#formulario").slideUp(625);
                                        $("#formularioad").slideUp(625);
                                        $("#formularioma").slideDown(625);
                                        $("#tipo").val("D");
                                        document.getElementById("al").setAttribute("class", "btn grey");
                                        //  document.getElementById("doc").setAttribute("class", "btn red");
                                        document.getElementById("ad").setAttribute("class", "btn grey");

                                    });

                                    $("#ad").click(function () {

                                        document.getElementById("exp").innerHTML = "Clave"
                                        $("#tipo").val("A");
                                        document.getElementById("al").setAttribute("class", "btn grey");

                                        document.getElementById("ad").setAttribute("class", "btn red");
                                        document.getElementById("mae").setAttribute("class", "btn grey");
                                    });
                                    $("#mae").click(function () {

                                        document.getElementById("exp").innerHTML = "Clave"
                                        $("#tipo").val("D");
                                        document.getElementById("al").setAttribute("class", "btn grey");
                                        document.getElementById("mae").setAttribute("class", "btn red");
                                        document.getElementById("ad").setAttribute("class", "btn grey");
                                    });


                                    $("#ingresar").click(function () {

                                        var usu = $("#usu").val();
                                        var pass = $("#pass").val();
//                                        var usuma = $("#usuma").val();
//                                        var passma = $("#passma").val();
//                                        var usuadm = $("#usuadm").val();
//                                        var passadm = $("#passadm").val();
                                        var tipo = $("#tipo").val();
                                        if ((usu === "" || pass === "") /*&& (usuma === "" || passma === "") && (usuadm === "" || passadm === "" )*/) {
                                            const toast = swal.mixin({
                                                toast: true,
                                                position: 'center',
                                                showConfirmButton: false,
                                                timer: 1000
                                            });
                                            toast({
                                                type: 'warning',
                                                title: 'Por favor llena todos los datos'
                                            });
                                        } else {
                                            $("#formulario").slideUp(625);
                                            $("#formularioad").slideUp(625);
                                            $("#formularioma").slideUp(625);
                                            $("#in").slideUp(625);
                                            $("#loader").slideDown(625, function () {
                                                $.ajax({
                                                    url: "logueo",
                                                    type: "post",
                                                    data: {
                                                        usu: usu,
                                                        pass: pass,
//                                                        usuma: usuma,
//                                                        passma: passma,
//                                                        usuadm: usuadm,
//                                                        passadm: passadm,
                                                        tipo: tipo
                                                    },
                                                    success: function (data) {

                                                        if (data === "OK") {
                                                            location.href = "Alumno";
                                                        }
                                                        if (data === "DOCENTE") {
                                                            location.href = "principalM";
                                                        }
                                                        if (data === "ADMINISTRATIVO") {
                                                            location.href = "admin";
                                                        }


                                                        if (data === "ERRORAL") {
                                                            var toastHTML = '<span>Error: No. de Empleado/Nip incorrecto</span>';
                                                            M.toast({html: toastHTML});
                                                            $("#formulario").slideDown(625);
                                                            $("#loader").slideUp(625);
                                                            $("#in").slideDown(625);
                                                            $("#pass").val("");
                                                        }

                                                        if (data === "ERRORD") {
                                                            var toastHTML = '<span>Error: No. de Empleado/Nip incorrecto</span>';
                                                            M.toast({html: toastHTML});
                                                            $("#formulario").slideDown(625);
                                                            $("#loader").slideUp(625);
                                                            $("#in").slideDown(625);
                                                            $("#pass").val("");
                                                        }
                                                        if (data === "ERRORAD") {
                                                            var toastHTML = '<span>Error: Clave/Nip incorrecto</span>';
                                                            M.toast({html: toastHTML});
                                                            $("#formulario").slideDown(625);
                                                            $("#loader").slideUp(625);
                                                            $("#in").slideDown(625);
                                                            $("#pass").val("");
                                                        }

                                                        if (data === "ERRORENLINEA") {
                                                            var toastHTML = '<span>Error: Ya se ha iniciado sesion con esta cuenta</span>';
                                                            M.toast({html: toastHTML});
                                                            $("#formulario").slideDown(625);
                                                            $("#loader").slideUp(625);
                                                            $("#in").slideDown(625);
                                                            $("#pass").val("");
                                                        }

                                                        if (data === "CONTESTADO") {
                                                            var x = screen.width;
                                                            var y = screen.height;
                                                            // cuando se haya contestado el examen, se abrira un pdf.
                                                            window.open("pdfdos?id=" + $("#usu").val(), "nuevo", "width=" + (x + 300) + ",height=" + (y + 300) + ",resizable=false");
                                                            location.reload();
                                                        }
                                                    }
                                                });//ajax    
                                            });
                                        }
                                    });//boton ingresar
                                });
    </script>
</html>
