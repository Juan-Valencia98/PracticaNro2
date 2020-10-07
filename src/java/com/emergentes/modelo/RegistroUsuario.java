package com.emergentes.modelo;
public class RegistroUsuario {
    private int id;
    private String nombres;
    private String apellidos;
    private String correo;
    private String contrasena;
    public RegistroUsuario() {
        id = 0;
        nombres = "";
        apellidos = "";
        correo = "";
        contrasena="";
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
    public String getCorreo(){
        return correo;
    }
    public void setCorreo(String correo){
        this.correo=correo;
    } 
    public String getContrasena(){
        return contrasena;
    }
    public void setContrasena(String contrasena){
        this.contrasena=contrasena;
    }
}

