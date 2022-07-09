package supermark.code;

import java.sql.ResultSet;
import java.sql.SQLException;

import supermark.repository.Conexión;

public class Login {
 
	private String dni;
	private String contrasenia;
	
	public Login (String dni, String contrasenia) {
		this.dni = dni;
		this.contrasenia = contrasenia;
	}
	
	public Usuario ingresar() throws SQLException {
		Usuario user = null;
		Conexión conexion = new Conexión();
		
		String sql = "select * from usuario where dni="  + " " +
		this.dni + " " + "and contrasenia=" + "'" + this.contrasenia + "'" ;

		
		ResultSet rs = conexion.devuelveConsulta(sql);
		
	while (rs.next()) {
		// System.out.println("Ha iniciado sesión");
		
		int id=rs.getInt("id"); 
		String nombre=rs.getString("nombre");
		String apellido=rs.getString("apellido");
		String dni=rs.getString("dni");
		String contrasenia=rs.getString("contrasenia");	
		int tipo = rs.getInt("tipo");
		
		user = new Usuario (id, nombre, apellido, dni, contrasenia, tipo);
		
	}
	return user;
} 

public String getDni() {
	return dni;
}
public void setDni(String dni) {
	this.dni = dni;
}
public String getContrasenia() {
	return contrasenia;
}
public void setContrasenia(String contrasenia) {
	this.contrasenia = contrasenia;
}
	
		
		
	}

