package supermark.code;

import java.util.ArrayList;
import java.util.Date;

public class Comprobante {

	private Integer id;
	private Date fecha;
	private Character tipo;
	private ArrayList <Producto> productos;
	private Float total;
	private Usuario cliente;
	private Pago pago;
	
	
	
	
	public Comprobante(Integer id, Date fecha, Character tipo, ArrayList<Producto> productos, Float total,
			Usuario cliente, Pago pago) {
		super();
		this.id = id;
		this.fecha = fecha;
		this.tipo = tipo;
		this.productos = productos;
		this.total = total;
		this.cliente = cliente;
		this.pago = pago;
	}
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public Character getTipo() {
		return tipo;
	}
	public void setTipo(Character tipo) {
		this.tipo = tipo;
	}
	public ArrayList<Producto> getProductos() {
		return productos;
	}
	public void setProductos(ArrayList<Producto> productos) {
		this.productos = productos;
	}
	public Float getTotal() {
		return total;
	}
	public void setTotal(Float total) {
		this.total = total;
	}
	public Usuario getCliente() {
		return cliente;
	}
	public void setCliente(Usuario cliente) {
		this.cliente = cliente;
	}
	public Pago getPago() {
		return pago;
	}
	public void setPago(Pago pago) {
		this.pago = pago;
	}
	
	
	
	
}
