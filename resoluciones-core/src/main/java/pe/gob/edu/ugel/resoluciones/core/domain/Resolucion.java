package pe.gob.edu.ugel.resoluciones.core.domain;

import java.io.Serializable;

public class Resolucion  extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;
	
	private String nombre;

	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
}
