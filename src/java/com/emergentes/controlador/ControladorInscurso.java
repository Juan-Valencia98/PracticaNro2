package com.emergentes.controlador;

import com.emergentes.modelo.InscripcionCurso;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ControladorInscurso", urlPatterns = {"/ControladorInscurso"})
public class ControladorInscurso extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       int op =Integer.parseInt(request.getParameter("op"));
       int id,pos;
       HttpSession ses= request.getSession();
       ArrayList<InscripcionCurso> lista=(ArrayList<InscripcionCurso>) ses.getAttribute("listaest");
       if(op==1){
          InscripcionCurso p =new  InscripcionCurso();
          request.setAttribute("miCurso",p);
          request.getRequestDispatcher("editarinscurso.jsp").forward(request,response);
       }
       if(op==2){
           id=Integer.parseInt(request.getParameter("id"));
           pos=buscarIndice(request,id);
           InscripcionCurso p1= lista.get(pos);
           request.setAttribute("miCurso",p1);
           request.getRequestDispatcher("editarinscurso.jsp").forward(request,response);
       }
       if(op==3){
           id=Integer.parseInt(request.getParameter("id"));
           pos=buscarIndice(request,id);
           lista.remove(pos);
           ses.setAttribute("listaest",lista);
           response.sendRedirect("inscripcurso.jsp");
       }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       int id= Integer.parseInt(request.getParameter("id"));
       String nombres= request.getParameter("nombres");
       String apellidos= request.getParameter("apellidos");
       String curso= request.getParameter("curso");
       String nuevo= request.getParameter("nuevo");
       int pos;
       
       InscripcionCurso per = new InscripcionCurso();
       per.setId(id);
       per.setNombres(nombres);
       per.setApellidos(apellidos);
       per.setCurso(curso);
       
       HttpSession ses=request.getSession();
       ArrayList<InscripcionCurso> lista = (ArrayList<InscripcionCurso>) ses.getAttribute("listaest");
       
       if(nuevo.equals("true")){
           lista.add(per);
       }
       else{
           pos=buscarIndice(request,id);
           lista.set(pos,per);
           
       }
       response.sendRedirect("inscripcurso.jsp");
    }
    private int buscarIndice(HttpServletRequest request,int id)
    {
        HttpSession ses=request.getSession();
        ArrayList<InscripcionCurso> lista=(ArrayList<InscripcionCurso>) ses.getAttribute("listaest");
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
