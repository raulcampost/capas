package com.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(schema="public",name="pelicula")
public class Pelicula {
	
	@Id
	@Column(name="id_pelicula")
	public Integer idpelicula;
	
	@Column(name="s_portada")
	public String sportada;
	
	@Column(name="s_singular")
	public String ssingular;
	
	@Column(name="s_singular2")
	public String ssingular2;
	
	@Column(name="s_video")
	public String svideo;
		
	@Column(name="s_titulo")
	public String stitulo;
	
	@Column(name="s_director")
	public String sdirector;
	
	@Column(name="s_sinopsis")
	public String ssinopsis;
	
	@Column(name="i_puestos")
	public Integer ipuestos;
	
	@Column(name="b_seleccion")
	public Boolean bseleccion;
	
	
	public Pelicula() {
		// TODO Auto-generated constructor stub
	}

	public Pelicula(Integer id,String bn,String sg,String sg2,String sv,String titulo,String director,String sinopsis,Integer puestos,Boolean bandera) {
		// TODO Auto-generated constructor stub
		this.idpelicula = id;
		this.sportada = bn;
		this.ssingular = sg;
		this.ssingular2 = sg2;
		this.svideo = sv;
		this.stitulo = titulo;
		this.sdirector = director;
		this.ssinopsis = sinopsis;
		this.ipuestos = puestos;
		this.bseleccion = bandera;
	}
	
	
	//setters
	public void setIdpelicula(Integer idpelicula) {
		this.idpelicula = idpelicula;
	}
	
	public void setSsingular(String ssingular) {
		this.ssingular = ssingular;
	}
	
	public void setSsingular2(String ssingular2) {
		this.ssingular2 = ssingular2;
	}
	
	public void setSvideo(String svideo) {
		this.svideo = svideo;
	}
	
	public void setSportada(String sportada) {
		this.sportada = sportada;
	}
	
	public void setStitulo(String stitulo) {
		this.stitulo = stitulo;
	}
	
	public void setSdirector(String sdirector) {
		this.sdirector = sdirector;
	}
	
	public void setSsinopsis(String ssinopsis) {
		this.ssinopsis = ssinopsis;
	}
	
	public void setIpuestos(Integer ipuestos) {
		this.ipuestos = ipuestos;
	}
	
	public void setBseleccion(Boolean bseleccion) {
		this.bseleccion = bseleccion;
	}
	
	
	
	//getters
	public Integer getIdpelicula() {
		return idpelicula;
	}
	
	public String getSportada() {
		return sportada;
	}
	
	public String getSsingular() {
		return ssingular;
	}
	
	public String getSsingular2() {
		return ssingular2;
	}
	
	public String getSvideo() {
		return svideo;
	}
	
	public String getStitulo() {
		return stitulo;
	}
	
	public String getSdirector() {
		return sdirector;
	}
	
	public String getSsinopsis() {
		return ssinopsis;
	}
	
	public Integer getIpuestos() {
		return ipuestos;
	}
	
	public Boolean getBseleccion() {
		return bseleccion;
	}
	
}
