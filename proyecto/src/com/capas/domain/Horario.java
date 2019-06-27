package com.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(schema="public",name="horario")
public class Horario {

	@Id
	@GeneratedValue(generator="horario", strategy = GenerationType.AUTO)
	@SequenceGenerator(name = "horario", sequenceName = "public.horario")
	@Column(name="id_horario")
	public Integer idhorario;
	
	@Column(name="hora")
	public String shora;
	
	@Column(name="id_funcion")
	public Integer idfuncion;
	

	
	public void setIdfuncion(Integer idfuncion) {
		this.idfuncion = idfuncion;
	}
	
	public void setIdhorario(Integer idhorario) {
		this.idhorario = idhorario;
	} 
	
	public void setShora(String shora) {
		this.shora = shora;
	}
	
	
	public Integer getIdfuncion() {
		return idfuncion;
	}
	
	public Integer getIdhorario() {
		return idhorario;
	}
	
	public String getShora() {
		return shora;
	}
	
	
	
	
	
	
}
