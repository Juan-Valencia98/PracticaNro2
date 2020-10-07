package com.emergentes.controlador;

import com.emergentes.modelo.RegistroProducto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ControladorRegproducto", urlPatterns = {"/ControladorRegproducto"})
public class ControladorRegproducto extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       int op =Integer.parseInt(request.getParameter("op"));
       int id,pos;
       HttpSession ses= request.getSession();
       ArrayList<RegistroProducto> lista=(ArrayList<RegistroProducto>) ses.getAttribute("listaregistro");
       if(op==1){
          RegistroProducto p =new  RegistroProducto();
          request.setAttribute("miRegistroproducto",p);
          request.getRequestDispatcher("editaregisproduct.jsp").forward(request,response);
       }
       if(op==2){
           id=Integer.parseInt(request.getParameter("id"));
           pos=buscarIndice(request,id);
           RegistroProducto p1= lista.get(pos);
           request.setAttribute("miRegistroproducto",p1);
           request.getRequestDispatcher("editaregisproduct.jsp").forward(request,response);
       }
       if(op==3){
           id=Integer.parseInt(request.getParameter("id"));
           pos=buscarIndice(request,id);
           lista.remove(pos);
           ses.setAttribute("listaregistro",lista);
           response.sendRedirect("registroproducto.jsp");
       }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       int id= Integer.parseInt(request.getParameter("id"));
       String producto= request.getParameter("producto");
       String categoria= request.getParameter("categoria");
       String existencia= request.getParameter("existencia");
       int precio= Integer.parseInt(request.getParameter("precio"));
       String nuevo= request.getParameter("nuevo");
       int pos;
       
       RegistroProducto per = new RegistroProducto();
       per.setId(id);
       per.setProducto(producto);
       per.setCategoria(categoria);
       per.setExistencia(existencia);
       per.setPrecio(precio);
       
       HttpSession ses=request.getSession();
       ArrayList<RegistroProducto> lista = (ArrayList<RegistroProducto>) ses.getAttribute("listaregistro");
       
       if(nuevo.equals("true")){
           lista.add(per);
       }
       else{
           pos=buscarIndice(request,id);
           lista.set(pos,per);
           
       }
       response.sendRedirect("registroproducto.jsp");
    }
    private int buscarIndice(HttpServletRequest request,int id)
    {
        HttpSession ses=request.getSession();
        ArrayList<RegistroProducto> lista=(ArrayList<RegistroProducto>) ses.getAttribute("listaregistro");
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
