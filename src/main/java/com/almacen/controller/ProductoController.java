package com.almacen.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.almacen.model.Producto;
import com.almacen.model.Producto.Seccion;
import com.almacen.service.ProductoService;

/**
 * Servlet implementation class ProductoController
 */
public class ProductoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static String INICIO = "/inicio.jsp";
	private static String FILTRAR_PRODUCTOS = "/filtrarFormulario.jsp";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("ProductoServiceMethod").equals("insertar")) {
			String nombre = request.getParameter("nombre");
			Seccion seccion = Seccion.valueOf(request.getParameter("seccion"));
			double precio = Double.parseDouble(request.getParameter("precio"));
			int stock = Integer.parseInt(request.getParameter("stock"));

			// Insertamos un producto
			Producto producto = new Producto(nombre, seccion, precio, stock);
			ProductoService.insertarProducto(producto);
		}

		else if (request.getParameter("ProductoServiceMethod").equals("modificar")) {
			// Modificamos el precio de un producto
			String nombre = request.getParameter("nombre");
			double precio = Double.parseDouble(request.getParameter("precio"));
			ProductoService.modificarPrecio(nombre, precio);

		}

		else if (request.getParameter("ProductoServiceMethod").equals("borrar")) {
			// Borramos un producto por nombre
			String nombre = request.getParameter("nombre");
			ProductoService.borrarProducto(nombre);

		}

		else if (request.getParameter("ProductoServiceMethod").equals("filtrar")) {
			// Recargamos la página para ver los productos filtrados
			RequestDispatcher rd = request.getRequestDispatcher(FILTRAR_PRODUCTOS);
			rd.forward(request, response);

		}

		// Regresamos a la página de inicio tras insertar, modificar o borrar
		RequestDispatcher rd = request.getRequestDispatcher(INICIO);
		rd.forward(request, response);

	}
}
