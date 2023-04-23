/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.miempresa.webjava05;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Luis
 */
@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String tabla = request.getParameter("tabla");
        request.setAttribute("tabla", tabla);
        //request.getRequestDispatcher("jstl_recibir.jsp").forward(request,  response);  

        String num1 = request.getParameter("_num1");
        String num2 = request.getParameter("_num2");
        String simbolo = request.getParameter("_simbolo");

        double _num1 = Double.parseDouble(num1);
        double _num2 = Double.parseDouble(num2);

        double resultado;

        if (simbolo.equals("+")) {
            resultado = _num1 + _num2;
        } else if (simbolo.equals("-")) {
            resultado = _num1 - _num2;
        } else if (simbolo.equals("*")) {
            resultado = _num1 * _num2;
        } else if (simbolo.equals("/")) {
            resultado = _num1 / _num2;
        } else {
            throw new ServletException("Operacion Invalida");
        }
        request.setAttribute("num1", num1);
        request.setAttribute("num2", num2);
        request.setAttribute("simbolo", simbolo);
        request.setAttribute("resultado", resultado);
        request.getRequestDispatcher("FormResultado.jsp").forward(request, response);

        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
