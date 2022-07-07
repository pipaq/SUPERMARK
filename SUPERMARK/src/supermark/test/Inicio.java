package supermark.test;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.Scanner;

import supermark.code.Login;
import supermark.code.Registro;
import supermark.code.Usuario;

public class Inicio {

	public static void main(String[] args) throws ParseException, SQLException {
		// TODO Auto-generated method stub
		Scanner teclado = new Scanner (System.in);
		System.out.println("***** BIENVENIDO A SUPERMARK *****");
		System.out.println("Ingrese una opción");
		System.out.println("1.REGISTRARME");
		System.out.println("2.INICIAR SESIÓN");
		int opcion = teclado.nextInt();
		
		if (opcion==1) {
			System.out.println("Nuevo Usuario");
			Registro registro1 = new Registro();
			registro1.validacionDatos();
		} else  {
			System.out.println("Ingrese su DNI: ");
			Long dni = teclado.nextLong();
			
			System.out.println("Ingrese su Contraseña: ");
			String contrasenia = teclado.next();
			
			Login login = new Login (dni, contrasenia);
			Usuario user = login.ingresar();
			
		
				}
			}

			
	}


