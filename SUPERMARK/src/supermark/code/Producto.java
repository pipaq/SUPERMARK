package supermark.code;

import java.util.Date;

public class Producto {
	
	private Integer id;
	private String nombre;
	private String descripcion;
	private Double precio;
	private Integer stock;
	private Date vencimiento;
	private String categoria;
	
	
	public Producto(Integer id, String nombre, String descripcion, Double precio, Integer stock, Date vencimiento,
			String categoria) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.precio = precio;
		this.stock = stock;
		this.vencimiento = vencimiento;
		this.categoria = categoria;
	}
	
	
	public Producto(int id2, String nombre2, int cantidad, java.sql.Date vencimiento2, double precio2) {
		// TODO Auto-generated constructor stub
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
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Double getPrecio() {
		return precio;
	}
	public void setPrecio(Double precio) {
		this.precio = precio;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	public Date getVencimiento() {
		return vencimiento;
	}
	public void setVencimiento(Date vencimiento) {
		this.vencimiento = vencimiento;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	
	

}
