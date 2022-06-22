package supermark.code;

public class Carrito {
	
	private Producto productos;
	private Integer cantidad;
	private Float descuento;
	
	
	
	
	
	public Carrito(Producto productos, Integer cantidad, Float descuento) {
		super();
		this.productos = productos;
		this.cantidad = cantidad;
		this.descuento = descuento;
	}
	
	public Producto getProductos() {
		return productos;
	}
	public void setProductos(Producto productos) {
		this.productos = productos;
	}
	public Integer getCantidad() {
		return cantidad;
	}
	public void setCantidad(Integer cantidad) {
		this.cantidad = cantidad;
	}
	public Float getDescuento() {
		return descuento;
	}
	public void setDescuento(Float descuento) {
		this.descuento = descuento;
	}
	
	

}
