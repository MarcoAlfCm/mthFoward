/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllerRegistrado;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zero
 */
@WebServlet(name = "ctrlRegistrado", urlPatterns = {"/publicados", "/miCuenta", "/agregarPublicacion"})
public class ctrlRegistrado extends HttpServlet {

    String url = "";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        url = request.getServletPath();
        if (url.equals("/publicados")) {
            request.setAttribute("url", "include/publicados.jsp");
            request.getRequestDispatcher("WEB-INF/viewRegistrado/menuRegistrado.jsp").forward(request, response);

        }
        if (url.equals("/miCuenta")) {
            request.setAttribute("url", "include/miCuenta.jsp");
            request.getRequestDispatcher("WEB-INF/viewRegistrado/menuRegistrado.jsp").forward(request, response);

        }
        if (url.equals("/agregarPublicacion")) {
            request.setAttribute("url", "include/agregarPublicacion.jsp");
            request.getRequestDispatcher("WEB-INF/viewRegistrado/menuRegistrado.jsp").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
