package supermark.code;

public class Carrito {
	
	private Integer id;
	private Producto id_producto;
	private Integer cantidad;
	private Float descuento;
	private Integer id_comprobante;
	
	
	
	public Carrito(Integer id, Producto id_producto, Integer cantidad, Float descuento, Integer id_comprobante) {
		super();
		this.id = id;
		this.id_producto = id_producto;
		this.cantidad = cantidad;
		this.descuento = descuento;
		this.id_comprobante = id_comprobante;
	}
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Producto getId_producto() {
		return id_producto;
	}
	public void setId_producto(Producto id_producto) {
		this.id_producto = id_producto;
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
	public Integer getId_comprobante() {
		return id_comprobante;
	}
	public void setId_comprobante(Integer id_comprobante) {
		this.id_comprobante = id_comprobante;
	}
	
	
}