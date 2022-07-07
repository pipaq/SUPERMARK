package supermark.code;

import java.util.Date;

public class Usuario {
	
	private Integer id;
	private String nombre;
	private String apellido;
	private Long dni;
	private Date fecha_nacimiento;
	private Domicilio id_domicilio;
	private String contrasenia;
	private boolean tipo;
	

	
	
	public Usuario(Integer id, String nombre, String apellido, Long dni, Date fecha_nacimiento, Domicilio id_domicilio,
			String contrasenia, boolean tipo) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.dni = dni;
		this.fecha_nacimiento = fecha_nacimiento;
		this.id_domicilio = id_domicilio;
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
	public Long getDni() {
		return dni;
	}
	public void setDni(Long dni) {
		this.dni = dni;
	}
	public Date getFecha_nacimiento() {
		return fecha_nacimiento;
	}
	public void setFecha_nacimiento(Date fecha_nacimiento) {
		this.fecha_nacimiento = fecha_nacimiento;
	}
	public Domicilio getId_domicilio() {
		return id_domicilio;
	}
	public void setId_domicilio(Domicilio id_domicilio) {
		this.id_domicilio = id_domicilio;
	}
	public String getContrasenia() {
		return contrasenia;
	}
	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}



	public boolean isTipo() {
		return tipo;
	}



	public void setTipo(boolean tipo) {
		this.tipo = tipo;
	}
	
	
	
	

}
