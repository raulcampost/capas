package com.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(schema="public",name="asiento")
public class Asiento {

	@Id
	@Column(name="id_asiento")
	public Integer idasiento;
	
	@Column(name="tipo")
	public String stipo;
	
	@Column(name="cantidad")
	public Integer icantidad;
	
	@Column(name="id_sala")
	public Integer idsala;
	
	
	public void setIdasiento(Integer idasiento) {
		this.idasiento = idasiento;
	}
	
	public void setIdsala(Integer idsala) {
		this.idsala = idsala;
	}
	
	public void setStipo(String stipo) {
		this.stipo = stipo;
	}
	
	public void setIcantidad(Integer icantidad) {
		this.icantidad = icantidad;
	}
	
	
	public Integer getIcantidad() {
		return icantidad;
	}
	
	public Integer getIdasiento() {
		return idasiento;
	}
	
	public Integer getIdsala() {
		return idsala;
	}
	
	public String getStipo() {
		return stipo;
	}
	
	
	
	
	
	
}
