package pe.gob.edu.ugel.resoluciones.core.domain;

import java.io.Serializable;

public class Item extends BaseEntity implements Serializable{

	private static final long serialVersionUID = 0L;
	
	private String nombre;
	private String tipo;
	
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	
	
}
