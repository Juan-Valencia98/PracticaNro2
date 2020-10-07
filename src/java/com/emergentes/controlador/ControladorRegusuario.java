package com.emergentes.controlador;

import com.emergentes.modelo.RegistroUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ControladorRegusuario", urlPatterns = {"/ControladorRegusuario"})
public class ControladorRegusuario extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       int op =Integer.parseInt(request.getParameter("op"));
       int id,pos;
       HttpSession ses= request.getSession();
       ArrayList<RegistroUsuario> lista=(ArrayList<RegistroUsuario>) ses.getAttribute("listausuario1");
       if(op==1){
          RegistroUsuario p =new  RegistroUsuario();
          request.setAttribute("miRegistroUsuario",p);
          request.getRequestDispatcher("editaregistrousuario.jsp").forward(request,response);
       }
       if(op==2){
           id=Integer.parseInt(request.getParameter("id"));
           pos=buscarIndice(request,id);
           RegistroUsuario p1= lista.get(pos);
           request.setAttribute("miRegistroUsuario",p1);
           request.getRequestDispatcher("editaregistrousuario.jsp").forward(request,response);
       }
       if(op==3){
           id=Integer.parseInt(request.getParameter("id"));
           pos=buscarIndice(request,id);
           lista.remove(pos);
           ses.setAttribute("listausuario1",lista);
           response.sendRedirect("registrousuario.jsp");
       }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       int id= Integer.parseInt(request.getParameter("id"));
       String nombres= request.getParameter("nombres");
       String apellidos= request.getParameter("apellidos");
       String correo= request.getParameter("correo");
       String contrasena= request.getParameter("contrasena");
       String nuevo= request.getParameter("nuevo");
       int pos;
       
       RegistroUsuario per = new RegistroUsuario();
       per.setId(id);
       per.setNombres(nombres);
       per.setApellidos(apellidos);
       per.setCorreo(correo);
       per.setContrasena(contrasena);
       
       HttpSession ses=request.getSession();
       ArrayList<RegistroUsuario> lista = (ArrayList<RegistroUsuario>) ses.getAttribute("listausuario1");
       
       if(nuevo.equals("true")){
           lista.add(per);
       }
       else{
           pos=buscarIndice(request,id);
           lista.set(pos,per);
           
       }
       response.sendRedirect("registrousuario.jsp");
    }
    private int buscarIndice(HttpServletRequest request,int id)
    {
        HttpSession ses=request.getSession();
        ArrayList<RegistroUsuario> lista=(ArrayList<RegistroUsuario>) ses.getAttribute("listausuario1");
        int i=0;
        if(lista.size()>0){
            while(i<lista.size()){
                if(lista.get(i).getId()==id){
                    break;
                }
                else{
                    i++;
                }
            }
        }
        return i;
    }
}
