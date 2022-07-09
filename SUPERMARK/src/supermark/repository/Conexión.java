package supermark.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexi�n {
	
public Connection conn=null; 
	
	public Conexi�n() { //constructor 	
	final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
	final String DB_URL="jdbc:mysql://localhost:3306/supermark";
	final String USER="root";
	final String PASS="10420";
	Statement stmt =null;

	try {

		Class.forName(JDBC_DRIVER);	
		System.out.println("Conectando a la bdd...");
		conn=DriverManager.getConnection(DB_URL,USER,PASS);
		
	
	}catch(Exception e) {
		System.out.println("error, no se pudo acceder a la base de datos...");
	}	
	}
	
	public ResultSet devuelveConsulta(String sql) throws SQLException {
		
		System.out.println("Creando consulta...");
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		
		return rs;
	}
	
	public void realizaConsulta(String sql) throws SQLException {
		
		System.out.println("Creando Consulta");
		Statement stmt=conn.createStatement();
		stmt.executeUpdate(sql);	
	}
	
	
	
	
	}


