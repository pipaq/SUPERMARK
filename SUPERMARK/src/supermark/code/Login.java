package supermark.code;

import java.sql.ResultSet;
import java.sql.SQLException;

import supermark.repository.Conexi�n;

public class Login {
 
	private long dni;
	private String contrasenia;
	
	public Login (long dni, String contrasenia) {
		this.dni = dni;
		this.contrasenia = contrasenia;
	}
	
	public Usuario ingresar() throws SQLException {
		Usuario user = null;
		Conexi�n conexion = new Conexi�n();
		
		String sql = "select * from usuario where dni="  + " " +
		this.dni + " " + "and contrasenia=" + "'" + this.contrasenia + "'" ;

		
		ResultSet rs = conexion.devuelveConsulta(sql);
		
	while (rs.next()) {
		System.out.println("Ha iniciado sesi�n");
		
		int id=rs.getInt("id"); 
		String nombre=rs.getString("nombre");
		String apellido=rs.getString("apellido");
		Long dni=rs.getLong("dni");
		String contrasenia=rs.getString("contrasenia");	
			
		user = new Usuario (id, nombre, apellido,dni, null, null, contrasenia, false);
		
	}
	return user;
}

public Long getDni() {
	return dni;
}
public void setDni(Long dni) {
	this.dni = dni;
}
public String getContrasenia() {
	return contrasenia;
}
public void setContrasenia(String contrasenia) {
	this.contrasenia = contrasenia;
}
	
		
		
	}

