package pe.gob.edu.ugel.resoluciones.core.domain;

import java.io.Serializable;

public class ItemResol extends BaseEntity implements Serializable {

	
	private static final long serialVersionUID = 2L;
	
	private Resolucion resolucion;
	private Item item;
	private String campo;
	
	
	public Resolucion getResolucion() {
		return resolucion;
	}
	public void setResolucion(Resolucion resolucion) {
		this.resolucion = resolucion;
	}
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	public String getCampo() {
		return campo;
	}
	public void setCampo(String campo) {
		this.campo = campo;
	}
	
	
	
}
