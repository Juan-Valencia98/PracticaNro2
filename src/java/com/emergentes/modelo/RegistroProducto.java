package com.emergentes.modelo;
public class RegistroProducto {
    private int id;
    private String producto;
    private String categoria;
    private String existencia;
    private int precio;
    public RegistroProducto() {
        id = 0;
        producto = "";
        categoria = "";
        existencia = "";
        precio=0;
    }
    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id=id;
    }
    public String getProducto(){
        return producto;
    }
    public void setProducto(String producto){
        this.producto=producto;
    }
    public String getCategoria(){
        return categoria;
    }
    public void setCategoria(String categoria){
        this.categoria=categoria;
    }
    public String getExistencia(){
        return existencia;
    }
    public void setExistencia(String existencia){
        this.existencia=existencia;
    } 
    public int getPrecio(){
        return precio;
    }
    public void setPrecio(int precio){
        this.precio=precio;
    }
}

