package com.jacaranda.model;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table (name="Cine")
public class Cinema {
	@Id
	@Column(name="cine")
	private String cinema;
	@Column(name="ciudad_cine")
	private String cityCinema;
	@Column(name="direccion_cine")
	private String addressCinema;
	
	public Cinema() {
		super();
	}
	public Cinema(String cine, String ciudadCine, String direccionCine) {
		super();
		cinema = cine;
		this.cityCinema = ciudadCine;
		this.addressCinema = direccionCine;
	}
	public String getCine() {
		return cinema;
	}
	public void setCine(String cine) {
		cinema = cine;
	}
	public String getCiudadCine() {
		return cityCinema;
	}
	public void setCiudadCine(String ciudadCine) {
		this.cityCinema = ciudadCine;
	}
	public String getDireccion_cine() {
		return addressCinema;
	}
	public void setDireccion_cine(String direccion_cine) {
		this.addressCinema = direccion_cine;
	}
	@Override
	public int hashCode() {
		return Objects.hash(cinema);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cinema other = (Cinema) obj;
		return Objects.equals(cinema, other.cinema);
	}
	@Override
	public String toString() {
		return "Cine [Cine=" + cinema + ", ciudadCine=" + cityCinema + ", direccion_cine=" + addressCinema + "]";
	}
	
	
}
