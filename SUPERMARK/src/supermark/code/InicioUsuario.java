package supermark.code;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import supermark.repository.Conexión;

public class InicioUsuario {

	private Conexión conexion;
	
public InicioUsuario () {
	conexion = new Conexión ();
	
}

public void menu (Usuario user) throws SQLException {
	Scanner teclado = new Scanner (System.in);
	System.out.println("Bienvenido " + user.getNombre() + " " +  "a Supermark ");
	int con=0;
	
	do {
		System.out.println("1.Seleccionar productos");
		System.out.println("2.Carrito de compras (Productos seleccionados)");
		System.out.println("3.Autorización de compra");
		
		int opciones = teclado.nextInt();
		
	switch (opciones) {
	case 1:
		System.out.println("*** NUESTROS PRODUCTOS ***");
		String sql = "Select * from producto";
		ResultSet rs = conexion.devuelveConsulta(sql);
		
		while(rs.next()) {
			int id = rs.getInt("id");
			String nombre =rs.getString("nombre");
			String descripcion = rs.getString("descripcion");
			double precio= rs.getDouble("precio");
			
			System.out.println(id +" "+  nombre +" "+ descripcion + " " +precio);
	}
		System.out.println("Ingrese el código del producto que desea seleccionar: ");
		int codigo = teclado.nextInt();
		System.out.println("Ingrese la cantidad que desea llevar: ");
		int cantidad = teclado.nextInt();
		
		
		String sql2 = "Select * from producto where id=" + "'" + codigo + "';";
		ResultSet rs2 = conexion.devuelveConsulta(sql2);
		
		if (rs2.next()) {
			int id = rs2.getInt("ID");
			String nombre = rs2.getString("NOMBRE");
			int stock = rs2.getInt("STOCK");
			Date vencimiento= rs2.getDate ("Vencimiento");
			double precio = rs2.getDouble("PRECIO");
			
			if(stock > cantidad) {
				Producto producto =new Producto(id, nombre, cantidad,vencimiento, precio);
				// falta terminar
				System.out.println("producto agregado");
				
				} else {
					System.out.println("SIN STOCK");
				}
		}break;
			
		case 2:
			System.out.println("Su carrito: ");
			// falta terminar
			break;
		
		case 3:
			System.out.println("Autorizar compra");
			// falta terminar
			break;

		default:System.out.println("Seleccione una opción correcta");
			break;
		}
		
				
		System.out.println("¿Desea realizar otra compra?");
		System.out.println("1.SI - 2.NO");
		con = teclado.nextInt();

		
		}while(con!=2); { 
			
		System.out.println("MUCHAS GRACIAS POR SU COMPRA. REGRESE PRONTO");
	
}
}
}	



				
		
		


