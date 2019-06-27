package com.capas.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(schema="public",name="sala")
public class Sala {

	@Id
	@Column(name="id_sala")
	public Integer idsala;
	
	@Column(name="sala")
	public Integer isala;
	
	public void setIdsala(Integer idsala) {
		this.idsala = idsala;
	}
	
	public void setIsala(Integer isala) {
		this.isala = isala;
	}
	
	public Integer getIdsala() {
		return idsala;
	}
	
	public Integer getIsala() {
		return isala;
	}
	
	
}
