package com.almacen.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import com.almacen.model.Producto;
import com.almacen.model.Producto.Seccion;

public class ProductoService {

	public static List<Producto> productos = new ArrayList<Producto>(
			List.of(new Producto("televisión samsung", Seccion.TELEVISORES, 199.99, 4),
					new Producto("lenovo thinkpad", Seccion.ORDENADORES, 759.60, 9),
					new Producto("lavadora samsung", Seccion.ELECTRODOMÉSTICOS, 999.60, 5),
					new Producto("mando tv", Seccion.ACCESORIOS, 9.60, 16),
					new Producto("auriculares jbl", Seccion.ACCESORIOS, 39.90, 13)));

	public static List<Producto> listaProductosPorSeccion(Seccion seccion) {
		List<Producto> listProductosPorSeccion = new ArrayList<Producto>();
		for (Producto producto : productos) {
			if (producto.getSeccion().equals(seccion)) {
				listProductosPorSeccion.add(producto);
			}
		}
		return listProductosPorSeccion;
	}

	public static void insertarProducto(Producto producto) {
		productos.add(producto);
	}

	public static void modificarPrecio(String nombre, double precio) {
		for (Producto producto : productos) {
			if (producto.getNombre().equals(nombre)) {
				producto.setPrecio(precio);
			}
		}
	}

	public static void borrarProducto(String nombre) {
		Iterator<Producto> iterator = productos.iterator();
		while (iterator.hasNext()) {
			Producto producto = iterator.next();
			if (producto.getNombre().equals(nombre)) {
				iterator.remove();
			}
		}
	}

}
