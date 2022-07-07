package supermark.code;

public class Domicilio {
	private Integer id;
	private String calle;
	private Integer numero;
	private Integer piso;
	private String departamento;
	
	
	
	public Domicilio(Integer id, String calle, Integer numero, Integer piso, String departamento) {
		super();
		this.id= id;
		this.calle = calle;
		this.numero = numero;
		this.piso = piso;
		this.departamento = departamento;
	}
	
	
	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getCalle() {
		return calle;
	}
	public void setCalle(String calle) {
		this.calle = calle;
	}
	public Integer getNumero() {
		return numero;
	}
	public void setNumero(Integer numero) {
		this.numero = numero;
	}
	public Integer getPiso() {
		return piso;
	}
	public void setPiso(Integer piso) {
		this.piso = piso;
	}
	public String getDepartamento() {
		return departamento;
	}
	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}
	
	

}
