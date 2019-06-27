package com.capas.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(schema="public",name="funcion")
public class Funcion {

	@Id
	@GeneratedValue(generator="funcion", strategy = GenerationType.AUTO)
	@SequenceGenerator(name = "funcion", sequenceName = "public.funcion")
	@Column(name="id_funcion")
	public Integer idfuncion;
	
	@Column(name="formato")
	public String sformato;
	
	@Column(name="id_pelicula")
	public Integer idpelicula;

	
	
	public void setIdfuncion(Integer idfuncion) {
		this.idfuncion = idfuncion;
	}
	
	public void setIdpelicula(Integer idpelicula) {
		this.idpelicula = idpelicula;
	}
	
	public void setSformato(String sformato) {
		this.sformato = sformato;
	}
	
	
	public Integer getIdfuncion() {
		return idfuncion;
	}
	
	public Integer getIdpelicula() {
		return idpelicula;
	}
	
	public String getSformato() {
		return sformato;
	}
	
	
	
}
