package pe.gob.edu.ugel.resoluciones.core.domain;

import java.io.Serializable;

public class Usuario extends BaseEntity implements Serializable{

	
	private static final long serialVersionUID = 0L;
	
	private String nombre;
	private String password;
	private String role;
	
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
	
	
	
}
