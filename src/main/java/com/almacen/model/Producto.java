package com.almacen.model;

public class Producto {
	public enum Seccion {
		TELÉFONOS, ELECTRODOMÉSTICOS, ORDENADORES, TELEVISORES, ACCESORIOS
	};

	private String nombre;
	private double precio;
	private int stock;
	public Seccion seccion;

	public Producto(String nombre, Seccion seccion, double precio, int stock) {
		super();
		this.nombre = nombre;
		this.seccion = seccion;
		this.precio = precio;
		this.stock = stock;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Seccion getSeccion() {
		return seccion;
	}

	public void setSeccion(Seccion seccion) {
		this.seccion = seccion;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	@Override
	public String toString() {
		return "Producto [nombre=" + nombre + ", seccion=" + seccion + ", precio=" + precio + ", stock=" + stock + "]";
	}

}
