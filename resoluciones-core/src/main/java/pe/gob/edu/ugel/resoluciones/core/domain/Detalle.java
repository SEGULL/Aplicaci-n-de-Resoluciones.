package pe.gob.edu.ugel.resoluciones.core.domain;

import java.io.Serializable;

public class Detalle extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 2L;

	private String nominseducativa;
	private String lugarinstitucion;
	private String cargodesempeniar;
	private String motvacante;
	private String codplaza;
	private String vigenencargo;
	private String cargoactual;

	private ResolEmitida resolEmitida;

	public String getNominseducativa() {
		return nominseducativa;
	}

	public void setNominseducativa(String nominseducativa) {
		this.nominseducativa = nominseducativa;
	}

	public String getLugarinstitucion() {
		return lugarinstitucion;
	}

	public void setLugarinstitucion(String lugarinstitucion) {
		this.lugarinstitucion = lugarinstitucion;
	}

	public String getCargodesempeniar() {
		return cargodesempeniar;
	}

	public void setCargodesempeniar(String cargodesempeniar) {
		this.cargodesempeniar = cargodesempeniar;
	}

	public String getMotvacante() {
		return motvacante;
	}

	public void setMotvacante(String motvacante) {
		this.motvacante = motvacante;
	}

	public String getCodplaza() {
		return codplaza;
	}

	public void setCodplaza(String codplaza) {
		this.codplaza = codplaza;
	}

	public String getVigenencargo() {
		return vigenencargo;
	}

	public void setVigenencargo(String vigenencargo) {
		this.vigenencargo = vigenencargo;
	}

	public String getCargoactual() {
		return cargoactual;
	}

	public void setCargoactual(String cargoactual) {
		this.cargoactual = cargoactual;
	}

	public ResolEmitida getResolEmitida() {
		return resolEmitida;
	}

	public void setResolEmitida(ResolEmitida resolEmitida) {
		this.resolEmitida = resolEmitida;
	}

}
