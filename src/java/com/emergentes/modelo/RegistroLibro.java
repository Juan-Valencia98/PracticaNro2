package com.emergentes.modelo;
public class RegistroLibro {
    private int id;
    private String titulo;
    private String autor;
    private String resumen;
    private String medio;
    public RegistroLibro() {
        id = 0;
        titulo = "";
        autor = "";
        resumen = "";
        medio="";
    }
    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id=id;
    }
    public String getTitulo(){
        return titulo;
    }
    public void setTitulo(String titulo){
        this.titulo=titulo;
    }
    public String getAutor(){
        return autor;
    }
    public void setAutor(String autor){
        this.autor=autor;
    }
    public String getResumen(){
        return resumen;
    }
    public void setResumen(String resumen){
        this.resumen=resumen;
    } 
    public String getMedio(){
        return medio;
    }
    public void setMedio(String medio){
        this.medio=medio;
    }
}

