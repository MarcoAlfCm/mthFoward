<%-- 
    Document   : publicacion
    Created on : 27/10/2019, 02:06:35 PM
    Author     : zero
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<a href="categorias" style=" position: fixed; word-wrap: break-word; margin-top: 10px" class="btn-floating black "  >
    <i  class="material-icons" style="color: white">reply</i>
</a>
    <div class="card-panel" style="background-color: black">
    <h4 class="page-title" style="color: white">Publicaciones de ${categoria}</h4>    
        <table class=" highlight card-panel bor">
            <thead>
                <tr> 
                    <th>Descripción</th>
                    <th>Fecha de publicación</th>
                    <th class="center">Acción</th>
                </tr>
            </thead>
            <tbody>
                <%--<c:forEach var="dato" items="${publicaciones}">--%>
                    <tr>
                        <td>
                            Descripción
                        </td> 
                        <td >
                          3
                        </td>
                        <td class="center">
                            <a  class="btn-floating orange tooltipped" href="publicacion?id_reg=" data-position="right" data-tooltip="Ver publicaciones de ${descripcion}" >
                                <i class="material-icons">remove_red_eye</i> 
                            </a>
                        </td>
                    </tr>
                     
                <%--</c:forEach>--%>
            </tbody>
        </table>             
    </div>