/*
 * package supermark.repository;
 * 
 * import java.sql.SQLException;
 * 
 * import supermark.code.Usuario;
 * 
 * 
 * 
 * public class CRUDUsuario {
 * 
 * private Conexión conexion; private String sql;
 * 
 * public CRUDUsuario() {
 * 
 * this.conexion = new Conexión(); this.conexion.devuelveConsulta(sql)//abre
 * conexion this.sql = ""; }
 * 
 * public void insertar (Usuario usuario) { this.sql = "INSERT INTO usuario" +
 * "(id, nombre, apellido, dni, fecha_nacimiento, id_domicilio, contrasenia)"+
 * "VALUE (" + usuario.getId()+ ",'" + usuario.getNombre() + "','"+
 * usuario.getApellido() + "',"+ usuario.getDni() + ",'" +
 * usuario.getFecha_nacimiento() + "'," + usuario.getId_domicilio() + " , " +
 * usuario.getContrasenia()+"')";
 * 
 * try { conexion.getStmt().executeUpdate(sql); } catch (SQLException e) {
 * e.printStackTrace(); } finally { System.out.println("Usuario registrado"); }
 * 
 * 
 * } }
 */