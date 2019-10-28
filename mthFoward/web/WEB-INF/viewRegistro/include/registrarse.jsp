<%-- 
    Document   : registrarse
    Created on : 25/10/2019, 03:12:56 PM
    Author     : zero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <br><br><br><br><br><br><br>
    <div  class="container col s6 offset-s3 z-depth-2" style="background: black" >

        <div class="col s12 center" id="loader" hidden="">
            <div class="preloader-wrapper active" style="height: 100px; width: 100px">
                <div class="spinner-layer spinner-red-only">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div><div class="gap-patch">
                        <div class="circle"></div>
                    </div><div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container col s12 " id="formulario">
            <div class="col s6">
               <div class="col s12">
                <div class="col s12">
                    <p style="color:rgba(255,255,255);" >Nombre</p>
                </div>
                <div class="col s10">
                    <input type="text" id="nombre" style="border-bottom-color: #ffffff; color: white" placeholder="Nombre de usuario" onkeypress="pulsar(event); return valida(event)">
                </div>
            </div>
            <div class="col s12">
                <div class="col s12">
                    <p style="color:rgba(255,255,255);">Apellido paterno</p>
                </div>
                <div class="col s10">
                    <input type="text"  id="Ap"  style="border-bottom-color: #ffffff; color: white" onkeypress="pulsar(event)" placeholder="Apellido paterno">
                </div>
            </div>
            <div class="col s12">
                <div class="col s12">
                    <p style="color:rgba(255,255,255);">Apellido materno</p>
                </div>
                <div class="col s10">
                    <input type="text"  id="Am" style="border-bottom-color: #ffffff; color: white"  onkeypress="pulsar(event)" placeholder="Apellido materno" >
                </div>
            </div>
            </div>
            <div class="col s6">
                <div class="col s12">
                <div class="col s12">
                    <p style="color:rgba(255,255,255);" >Usuario</p>
                </div>
                <div class="col s10">
                    <input type="text" id="usu" style="border-bottom-color: #ffffff; color: white" placeholder="Ingresa tu username" onkeypress="pulsar(event); return valida(event)">
                </div>
            </div>
            <div class="col s12">
                <div class="col s12">
                    <p style="color:rgba(255,255,255);">Contraseña</p>
                </div>
                <div class="col s10">
                    <input type="password"  id="pass"  style="border-bottom-color: #ffffff; color: white" onkeypress="pulsar(event)" placeholder="Contraseña">
                </div>
            </div>
            <div class="col s12">
                <div class="col s12">
                    <p style="color:rgba(255,255,255);">Confirmar contraseña</p>
                </div>
                <div class="col s10">
                    <input type="password"  id="pass" style="border-bottom-color: #ffffff; color: white"  onkeypress="pulsar(event)" placeholder="Confirmar contraseña" >
                </div>
            </div>
            </div>
            <div class="col s6 offset-s3"id="in">
                <br><br>
                <a id="ingresar"  class="btn " style="background-color: #003399">Aceptar</a><br><br>
            </div>
        </div>   

    </div>
    <script>
// hacer esto por ajax<
        jQuery(document).ready(function () {
            $("#ingresar").click(function () {
                $("#formulario").slideUp(625);
                $("#loader").slideDown(625);

            });
        });
    </script>
</html>
