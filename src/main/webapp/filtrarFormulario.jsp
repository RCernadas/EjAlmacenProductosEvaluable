<%@page import="com.almacen.model.Producto"%>
<%@page import="java.util.List"%>
<%@page import="com.almacen.model.Producto.Seccion"%>
<%@page import="com.almacen.service.ProductoService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Filtrar</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<style>
      body {
        text-align: center; 
    }
</style>
</head>
<body>
	<h2>Filtrar productos por sección</h2>

	<label for="secciones">Eliga la sección para ver sus productos:</label>

	<form action="ProductoController" method="post">
		<input type="hidden" name="ProductoServiceMethod" value="filtrar">
		<select name="secciones" id="secciones">
			<option value="TELÉFONOS">Teléfonos</option>
			<option value="ELECTRODOMÉSTICOS">Electrodomésticos</option>
			<option value="ORDENADORES">Ordenadores</option>
			<option value="TELEVISORES">Televisores</option>
			<option value="ACCESORIOS">Accesorios</option>
		</select>
		<p>
			<input type="submit" name="filtrar por sección">
	</form>

	<p>
	<table border=1>
		<caption>ESTADO DEL ALMACÉN</caption>
		<tbody>
			<tr>
				<th>Nombre</th>
				<th>Sección</th>
				<th>Precio</th>
				<th>Stock</th>
			</tr>
			<%
			String seccionStr = request.getParameter("secciones");
			if (seccionStr != null) {
				Producto.Seccion seccion = Producto.Seccion.valueOf(seccionStr);
				List<Producto> listaFiltrada = ProductoService.listaProductosPorSeccion(seccion);
				if (listaFiltrada != null) {
					for (Producto producto : listaFiltrada) {
			%>
			<tr>
				<td>
					<%
					out.println(producto.getNombre());
					%>
				</td>
				<td>
					<%
					out.println(producto.getSeccion());
					%>
				</td>
				<td>
					<%
					out.println(producto.getPrecio() + " €");
					%>
				</td>
				<td>
					<%
					out.println(producto.getStock());
					%>
				</td>
			</tr>
			<%
			}
			}
			}
			%>
		</tbody>
	</table>
</body>
</html>