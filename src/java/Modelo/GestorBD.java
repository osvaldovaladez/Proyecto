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

}
