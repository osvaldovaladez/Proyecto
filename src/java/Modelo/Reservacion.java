/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author jaime
 */
public class Reservacion {
    String id;
    String hora;
    String fecha;
    String mesa;
    String nombre;
    String personas;

    public Reservacion(String id, String hora, String fecha, String mesa, String nombre, String personas) {
        this.id = id;
        this.hora = hora;
        this.fecha = fecha;
        this.mesa = mesa;
        this.nombre = nombre;
        this.personas = personas;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getMesa() {
        return mesa;
    }

    public void setMesa(String mesa) {
        this.mesa = mesa;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPersonas() {
        return personas;
    }

    public void setPersonas(String personas) {
        this.personas = personas;
    }
    
    
}
