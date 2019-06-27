package com.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(schema="public",name="funxsala")
public class Funxsala {

	@Id
	@Column(name="id_funxsala")
	public Integer idfunxsala;
	
	@Column(name="id_funcion")
	public Integer idfuncion;
	
	@Column(name="id_sala")
	public Integer idsala;
	
	
	public void setIdfuncion(Integer idfuncion) {
		this.idfuncion = idfuncion;
	}
	
	public void setIdfunxsala(Integer idfunxsala) {
		this.idfunxsala = idfunxsala;
	}
	
	public void setIdsala(Integer idsala) {
		this.idsala = idsala;
	}
	
	
	public Integer getIdfuncion() {
		return idfuncion;
	}
	
	public Integer getIdfunxsala() {
		return idfunxsala;
	}
	
	public Integer getIdsala() {
		return idsala;
	}
	
	
	
	
}
