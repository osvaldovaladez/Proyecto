/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;


public class platillos {
    String id;
    String nombre;
    String usuario;
    String descripcion;
    String precio;

    public platillos(String id, String usuario, String nombre, String descripcion, String precio) {
        this.id = id;
        this.nombre = nombre;
        this.usuario = usuario;
        this.descripcion = descripcion;
        this.precio = precio;
    }

    public String getId() {
        return id;
    }

    public String getUsuario() {
        return usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getPrecio() {
        return precio;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }
}
