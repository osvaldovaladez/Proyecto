package Modelo;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.http.HttpServletResponse;

public class GestorBD {

    Connection conn = null;
    Statement stm = null;
    ResultSet ResultSet;
    int resultUpdate = 0;
    Integer clave, precio;
    String nombre, descripcion, usuario;
    platillos platilloencontrado;
    //Para el usuario
    String nombreUsuario, email, password, direccion, telefono, tipo;      

    public ArrayList<platillos> Todos() {
        ArrayList<platillos> platillo = new ArrayList<platillos>();
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            ResultSet = stm.executeQuery("SELECT * FROM platillos");
            if (!ResultSet.next()) {
                System.out.println(" No se encontraron registros");
                ConectaBD.cerrar();
                return null;
            } else {
                do {
                    clave = ResultSet.getInt("idPlatillo");
                    usuario = ResultSet.getString("idUsuario");
                    nombre = ResultSet.getString("nombre");
                    descripcion = ResultSet.getString("descripcion");
                    precio = ResultSet.getInt("precio");
                    platilloencontrado = new platillos(clave, usuario, nombre,descripcion, precio);
                    platillo.add(platilloencontrado);
                } while (ResultSet.next());
                ConectaBD.cerrar();
                return platillo;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return null;
        }
    }
    
    public boolean registrarUsuario(String nombreUsuario,String email,String password,String direccion,String telefono){
        int resultUpdate = 0;
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();

            resultUpdate = stm.executeUpdate("INSERT INTO usuarios (nombreUsuario, email, password, direccion, telefono, tipo) VALUES ('" + nombreUsuario + "','" + email + "','" + password + "','" + direccion + "','" + telefono + "','user');");

            if (resultUpdate != 0) {
                System.out.print("se insertaron los datos");
                ConectaBD.cerrar();
                return true;
            } else {
                ConectaBD.cerrar();
                return false;
            }
        } catch (SQLException e) {
            System.out.println("Error en la base de datos.");
            return false;
        }
    }
    
    public Usuario consultar(String nombreUser, String passw) {
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            
            ResultSet = stm.executeQuery("SELECT * FROM usuarios WHERE nombreUsuario = '" + nombreUser + "' and password = '" + passw + "';");

            if (!ResultSet.next()) {
                System.out.println(" No se encontro el registro");
                ConectaBD.cerrar();
                return null;
            } else {
                System.out.println("Se encontró el registro");
                nombreUsuario = ResultSet.getString("nombreUsuario");
                email = ResultSet.getString("email");
                password = ResultSet.getString("password");
                direccion = ResultSet.getString("direccion");
                telefono = ResultSet.getString("telefono");
                tipo = ResultSet.getString("tipo");
                Usuario usuarioHallado = new Usuario(nombreUsuario, email, password, direccion, telefono, tipo);

                ConectaBD.cerrar();
                return usuarioHallado;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return null;
        }
    }
}
