package com.emergentes.modelo;
public class InscripcionCurso {
    private int id;
    private String nombres;
    private String apellidos;
    private String curso;
    public InscripcionCurso() {
        id = 0;
        nombres = "";
        apellidos = "";
        curso = "";
    }
    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id=id;
    }
    public String getNombres(){
        return nombres;
    }
    public void setNombres(String nombres){
        this.nombres=nombres;
    }
    public String getApellidos(){
        return apellidos;
    }
    public void setApellidos(String apellidos){
        this.apellidos=apellidos;
    }
    public String getCurso(){
        return curso;
    }
    public void setCurso(String curso){
        this.curso=curso;
    }
}

