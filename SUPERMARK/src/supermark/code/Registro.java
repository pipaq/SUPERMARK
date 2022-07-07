package supermark.code;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

import supermark.repository.Conexión;

public class Registro {

	private String nombre;
	private String apellido;
	private Long dni;
	private String fecha_nacimiento;
	private int id_domicilio;
	private String contrasenia;
	
	public Registro () throws ParseException  {
		Scanner teclado = new Scanner (System.in);
		
		System.out.println("Ingrese Nombre: ");
		this.nombre = teclado.next();
		
		System.out.println("Ingrese Apellido: ");
		this.apellido = teclado.next();
		
		System.out.println("Ingrese N° de Documento: ");
		this.dni = teclado.nextLong();
		
		System.out.println("Ingrese Id Domicilio: ");
		this.id_domicilio = teclado.nextInt();
		
		System.out.println("Ingrese una Contraseña");
		this.contrasenia = teclado.next();
	}
	
	public void validacionDatos () throws SQLException {
		
		if (this.nombre!= "" &&this.apellido!="" && this.contrasenia!="") {
			String sql = "INSERT INTO usuario" + 
					"(nombre, apellido, dni, id_domicilio,  contrasenia)"+
					"VALUE ('" +
					this.nombre + "','"+
					this.apellido + "',"+
					this.dni + "," +
					this.id_domicilio + ",'" +
					this.contrasenia + "')";
			
	Conexión conexion = new Conexión();
	
	try {
		
	conexion.realizaConsulta(sql);
	
	}
	catch (SQLException e) {
		e.printStackTrace();
	}
	finally {
		System.out.println("USUARIO CARGADO CON EXITO");		
	}
		
}else { System.out.println("DATOS MAL CARGADOS. VUELVA A INTENTARLO");
}
}
}