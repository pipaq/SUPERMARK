package supermark.code;

import java.util.Date;

public class Usuario {
	
	private Integer id;
	private String nombre;
	private String apellido;
	private String dni;
	private String contrasenia;
	private int tipo;
	
	
	public Usuario(Integer id, String nombre, String apellido, String dni, 
			String contrasenia, int tipo) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.dni = dni;
		this.contrasenia = contrasenia;
		this.tipo = tipo;
	}
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
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


	public int getTipo() {
		return tipo;
	}


	public void setTipo(int tipo) {
		this.tipo = tipo;
	}


	
	
	

}
