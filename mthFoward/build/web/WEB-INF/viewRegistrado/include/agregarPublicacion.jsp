<%-- 
    Document   : agregarPublicacion
    Created on : 27/10/2019, 07:28:22 PM
    Author     : zero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="card-panel col s12" style="background-color: black">
    <h4 class="page-title" style="color: white">Mi cuenta</h4>    
    <div class="card-panel bor col s12">

        <div class="col s12">
            <div class="col s2">
                <p style="font-size: 13pt">Tema: </p>
            </div>            
            <div class="col s2">
                <input type="text"  >
            </div>    
            <div class="col s2">
                <p style="font-size: 13pt">Categoría: </p>
            </div>            
            <div class="col s2">
                <select>
                    <option>asd</option>
                </select>
            </div>
            <div class="col s12">
                <div class="col s2">
                    <p style="font-size: 13pt">Descripción: </p>
                </div>
                <div class="col s10">
                    <textarea id="textarea1" class="materialize-textarea"></textarea>
                </div>
            </div>
            <div class="col s12">
                <div class="col s2">
                    <p style="font-size: 13pt">Agregar imagen: </p>
                </div>
                <div class="col s10">
                    <div class="file-field input-field">
                        <div class="btn">
                            <span></span>
                            <input type="file">
                        </div>
                        <div class="file-path-wrapper">
                            <input class="file-path validate" type="text"  placeholder="Agregar imagen (opcional)">
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="col s12 right-align">

            <button class="btn green">publicar</button>
            <br>
            <br>


        </div>
    </div>
</div>