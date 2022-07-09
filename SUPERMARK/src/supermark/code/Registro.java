package supermark.code;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

import supermark.repository.Conexión;

public class Registro {

	private String nombre;
	private String apellido;
	private String dni;
	private String contrasenia;
	private int tipo;
	
	
	
	public Registro(String nombre, String apellido, String dni, String contrasenia, int tipo) {
		this.nombre = nombre;
		this.apellido = apellido;
		this.dni = dni;
		this.contrasenia = contrasenia;
		this.tipo = tipo;
	}

	
	public Registro () throws ParseException  {
		Scanner teclado = new Scanner (System.in);
		
		System.out.println("Ingrese Nombre: ");
		this.nombre = teclado.next();
		
		System.out.println("Ingrese Apellido: ");
		this.apellido = teclado.next();
		
		System.out.println("Ingrese N° de Documento: ");
		this.dni = teclado.next();
		
		System.out.println("Ingrese una Contraseña");
		this.contrasenia = teclado.next();
		
		this.tipo = 1; //tipo cliente predeterminado.
	
		
	}
	
	
		 public void validacionDatos () throws SQLException {
		
		if 
		(this.nombre != "" && this.apellido != "" 
				&& this.dni != "" && this.contrasenia != "") {
				
				String sql = "insert into usuario values(null,"+"'"+this.nombre+"',"+
						"'"+this.apellido+"',"+"'"+this.dni+"',"+ "'"+ this.contrasenia	+"',"+ "1);";

				Conexión conexion =new Conexión();
				conexion.realizaConsulta(sql);
				
				System.out.println("USUARIO CARGADO");
							
			} else {   
			
				System.out.println("DATOS MAL INGRESADOS. VUELVA A INTENTARLO");
			
			}
	
}
}
