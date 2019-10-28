<%-- 
    Document   : listaTemas
    Created on : 26/10/2019, 08:20:45 PM
    Author     : zero
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="card-panel" style="background-color: black">
    <h4 class="page-title" style="color: white">Mis publicaciones</h4>    
    <table class=" highlight card-panel bor">

        <thead>
            <tr> 
                <th>Publicación</th>
                <th style="text-align: center">Número de comentarios</th>
                <th class="center">Aceptada/rechazada</th>
                <th class="center">Acción</th>
            </tr>
        </thead>
        <tbody>
            <%--<c:forEach var="dato" items="${publicaciones}">--%>
            <tr>
                <td>
                    Tema la que si sirve pero no esta en la base de datos
                </td> 
                <td style="text-align: center;">
                    3
                </td>
                <td class="center">
                    <a  class="btn-floating red tooltipped"  data-position="right" data-tooltip="Rechazada" >
                        <i class="material-icons">clear</i> 
                    </a>
                </td>
                <td class="center">
                    <a  class="btn-floating orange tooltipped" href="publicaciones?categoria=${categoria}" data-position="right" data-tooltip="Ver publicaciones de ${categoria}" >
                        <i class="material-icons">remove_red_eye</i> 
                    </a>
                </td>
            </tr>

            <%--</c:forEach>--%>
        </tbody>
    </table>             
</div>

