package com.capas.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(schema="public",name="reserva")
public class Reservacion {

	@Id
	@GeneratedValue(generator="reserva_id_reserva_seq", strategy = GenerationType.AUTO)
	@SequenceGenerator(name = "reserva_id_reserva_seq", sequenceName = "public.reserva_id_reserva_seq")
	@Column(name="id_reserva")
	public Integer idreserva;
	
	@Column(name="transaccion")
	public String stransaccion;
	
	@Column(name="fecha")
	public Date fecha;
	
	@Column(name="titulo")
	public String stitulo;
	
	@Column(name="formato")
	public String sformato;
	
	@Column(name="horario")
	public String shorario;
	
	@Column(name="asientonormal")
	public Integer inormal;
	
	@Column(name="asientomovil")
	public Integer imovil;
	
	@Column(name="subtotal")
	public Integer isubtotal;
	
	@Column(name="saldocuenta")
	public Integer icuenta;
	
	@Column(name="remanente")
	public Integer iremanente;
	
	@Column(name="total")
	public Integer itotal;
	
	@Column(name="id_usuario")
	public Integer id;
	
	@Column(name="mensaje")
	public String smensaje;
	
	
	
	public Reservacion(String transaccion,Integer id,String mensaje,Date fecha) {
		// TODO Auto-generated constructor stub
		this.stransaccion = transaccion;
		this.id = id;
		this.smensaje = mensaje;
		this.fecha = fecha;
	
		
	}
	

	public Reservacion(String stransaccion, Date fecha, String stitulo, String sformato, String shorario,
			Integer inormal, Integer imovil, Integer isubtotal, Integer icuenta, Integer iremanente, Integer itotal,
			Integer id) {
		super();
		this.stransaccion = stransaccion;
		this.fecha = fecha;
		this.stitulo = stitulo;
		this.sformato = sformato;
		this.shorario = shorario;
		this.inormal = inormal;
		this.imovil = imovil;
		this.isubtotal = isubtotal;
		this.icuenta = icuenta;
		this.iremanente = iremanente;
		this.itotal = itotal;
		this.id = id;
	}








	public String getSmensaje() {
		return smensaje;
	}

	public void setSmensaje(String smensaje) {
		this.smensaje = smensaje;
	}

	public Integer getIdreserva() {
		return idreserva;
	}

	public void setIdreserva(Integer idreserva) {
		this.idreserva = idreserva;
	}

	public String getStransaccion() {
		return stransaccion;
	}

	public void setStransaccion(String stransaccion) {
		this.stransaccion = stransaccion;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getStitulo() {
		return stitulo;
	}

	public void setStitulo(String stitulo) {
		this.stitulo = stitulo;
	}

	public String getSformato() {
		return sformato;
	}

	public void setSformato(String sformato) {
		this.sformato = sformato;
	}

	public String getShorario() {
		return shorario;
	}

	public void setShorario(String shorario) {
		this.shorario = shorario;
	}

	public Integer getInormal() {
		return inormal;
	}

	public void setInormal(Integer inormal) {
		this.inormal = inormal;
	}

	public Integer getImovil() {
		return imovil;
	}

	public void setImovil(Integer imovil) {
		this.imovil = imovil;
	}

	public Integer getIsubtotal() {
		return isubtotal;
	}

	public void setIsubtotal(Integer isubtotal) {
		this.isubtotal = isubtotal;
	}

	public Integer getIcuenta() {
		return icuenta;
	}

	public void setIcuenta(Integer icuenta) {
		this.icuenta = icuenta;
	}

	public Integer getIremanente() {
		return iremanente;
	}

	public void setIremanente(Integer iremanente) {
		this.iremanente = iremanente;
	}

	public Integer getItotal() {
		return itotal;
	}

	public void setItotal(Integer itotal) {
		this.itotal = itotal;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
