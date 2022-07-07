package supermark.code;

public class Pago {
	private Integer id;
	private String forma;
	private Long factura;
	private Long remito;
	
	public Pago(Integer id, String forma, Long factura, Long remito) {
		super();
		this.id = id;
		this.forma = forma;
		this.factura = factura;
		this.remito = remito;
	}
	
	
	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getForma() {
		return forma;
	}
	public void setForma(String forma) {
		this.forma = forma;
	}
	public Long getFactura() {
		return factura;
	}
	public void setFactura(Long factura) {
		this.factura = factura;
	}
	public Long getRemito() {
		return remito;
	}
	public void setRemito(Long remito) {
		this.remito = remito;
	}

	
	
}
