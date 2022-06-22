package supermark.code;

public class Pago {
	private String forma;
	private Long factura;
	private Long remito;
	
	public Pago(String forma, Long factura, Long remito) {
		super();
		this.forma = forma;
		this.factura = factura;
		this.remito = remito;
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
