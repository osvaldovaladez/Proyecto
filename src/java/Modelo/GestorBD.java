package Modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class GestorBD {

    Connection conn = null;
    Statement stm = null;
    ResultSet ResultSet;
    int resultUpdate = 0;
    //variables de los platillos
    String clave, precio, nombre, descripcion, usuario;
    platillos platilloencontrado;
    //Para el usuario
    String idUsuario, nombreUsuario, email, password, direccion, telefono, tipo;
    //Para las reservaciones
    String id, hora, fecha, mesa, nombreReservacion, personas;

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
                    clave = ResultSet.getString("idPlatillo");
                    usuario = ResultSet.getString("idUsuario");
                    nombre = ResultSet.getString("nombre");
                    descripcion = ResultSet.getString("descripcion");
                    precio = ResultSet.getString("precio");
                    platilloencontrado = new platillos(clave, usuario, nombre, descripcion, precio);
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

    public platillos buscarPlatillo(String clavej, String nombrej) {
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            ResultSet = stm.executeQuery("SELECT * FROM platillos WHERE idPlatillo=" + clavej + " and nombre='" + nombrej + "';");

            if (!ResultSet.next()) {
                System.out.println(" No se encontro el registro");
                ConectaBD.cerrar();
                return null;
            } else {
                System.out.println("Se encontró el registro");
                clave = ResultSet.getString("idPlatillo");
                usuario = ResultSet.getString("idUsuario");
                nombre = ResultSet.getString("nombre");
                descripcion = ResultSet.getString("descripcion");
                precio = ResultSet.getString("precio");
                platilloencontrado = new platillos(clave, usuario, nombre, descripcion, precio);

                ConectaBD.cerrar();
                return platilloencontrado;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return null;
        }
    }

    public boolean registrarplatillo(String clave, String nombre, String usuario, String descripcion, String precio) {
        int resultUpdate = 0;
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();

            resultUpdate = stm.executeUpdate("INSERT INTO platillos VALUES ('" + clave + "','" + usuario + "','" + nombre + "','" + descripcion + "','" + precio + "');");

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

    public boolean modificarplatillo(String clave, String nombre, String usuario, String descripcion, String precio) {
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            resultUpdate = stm.executeUpdate("UPDATE platillos SET idUsuario = '"
                    + usuario
                    + "', nombre = '" + nombre
                    + "', descripcion = '" + descripcion
                    + "', precio = '" + precio
                    + "' WHERE idPlatillo = "
                    + clave + ";");
            if (resultUpdate != 0) {
                conn.close();
                return true;
            } else {
                conn.close();;
                System.out.println("No se pudo actualizar el platillo.");
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

    public boolean eliminarplatillo(String clave, String nombre) {
        int resultUpdate = 0;
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();

            resultUpdate = stm.executeUpdate(
                    "DELETE FROM platillos WHERE(idPlatillo ='" + clave + "'and nombre='" + nombre + "');"
            );
            if (resultUpdate != 0) {
                ConectaBD.cerrar();
                return true;
            } else {
                ConectaBD.cerrar();
                return false;
            }
        } catch (SQLException e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

    //-------------------------------------------modificaciones del Usuario---------------------------------------
    public ArrayList<Usuario> Todosusuarios() {
        ArrayList<Usuario> usuario = new ArrayList<Usuario>();
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            ResultSet = stm.executeQuery("SELECT * FROM usuarios");
            if (!ResultSet.next()) {
                System.out.println(" No se encontraron registros");
                ConectaBD.cerrar();
                return null;
            } else {
                do {
                    idUsuario = ResultSet.getString("idUsuario");
                    nombreUsuario = ResultSet.getString("nombreUsuario");
                    email = ResultSet.getString("email");
                    password = ResultSet.getString("password");
                    direccion = ResultSet.getString("direccion");
                    telefono = ResultSet.getString("telefono");
                    tipo = ResultSet.getString("tipo");
                    Usuario usuarioHallado = new Usuario(idUsuario, nombreUsuario, email, password, direccion, telefono, tipo);
                    usuario.add(usuarioHallado);
                } while (ResultSet.next());
                ConectaBD.cerrar();
                return usuario;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return null;
        }
    }

    public boolean registrarUsuario(String nombreUsuario, String email, String password, String direccion, String telefono) {
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
                idUsuario = ResultSet.getString("idUsuario");
                nombreUsuario = ResultSet.getString("nombreUsuario");
                email = ResultSet.getString("email");
                password = ResultSet.getString("password");
                direccion = ResultSet.getString("direccion");
                telefono = ResultSet.getString("telefono");
                tipo = ResultSet.getString("tipo");
                Usuario usuarioHallado = new Usuario(idUsuario, nombreUsuario, email, password, direccion, telefono, tipo);

                ConectaBD.cerrar();
                return usuarioHallado;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return null;
        }
    }
    
    public boolean registrarReservacion(String hora, String fecha, String personas, String mesa, String nombre) {
        int resultUpdate = 0;
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();

            resultUpdate = stm.executeUpdate("INSERT INTO reservaciones (hora, fecha, mesa, reservacionNombre, numPersonas) VALUES ('" + hora + "','" + fecha + "','" + mesa + "','" + nombre + "','" + personas + "');");

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
    
    
    //Mostrar reservaciones
    public ArrayList<Reservacion> TodasReservaciones(String user) {
        ArrayList<Reservacion> reservacion = new ArrayList<Reservacion>();
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            ResultSet = stm.executeQuery("SELECT * FROM reservaciones WHERE reservacionNombre = '" + user + "';");
            if (!ResultSet.next()) {
                System.out.println(" No se encontraron registros");
                ConectaBD.cerrar();
                return null;
            } else {
                do {
                    id = ResultSet.getString("idReservacion");
                    hora = ResultSet.getString("hora");
                    fecha = ResultSet.getString("fecha");
                    mesa = ResultSet.getString("mesa");
                    nombreReservacion = ResultSet.getString("reservacionNombre");
                    personas = ResultSet.getString("numPersonas");
                    Reservacion reservacionEncontrada = new Reservacion(id, hora, fecha, mesa, nombreReservacion, personas);
                    reservacion.add(reservacionEncontrada);
                } while (ResultSet.next());
                ConectaBD.cerrar();
                return reservacion;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return null;
        }
    }
}
