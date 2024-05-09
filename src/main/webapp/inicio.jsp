<%@page import="com.almacen.service.ProductoService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ESTADO ALMACEN</title>
</head>
<body>
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
			for (int i = 0; i < ProductoService.productos.size(); i++) {
			%>
			<tr>
				<td>
					<%
					out.println(ProductoService.productos.get(i).getNombre());
					%>
				</td>
				<td>
					<%
					out.println(ProductoService.productos.get(i).getSeccion());
					%>
				</td>
				<td>
					<%
					out.println(ProductoService.productos.get(i).getPrecio());
					%>
				</td>
				<td>
					<%
					out.println(ProductoService.productos.get(i).getStock());
					%>
				</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<p>
		<a href="insertarFormulario.jsp">Insertar un producto</a>
	<p>
		<a href="modificarPrecioFormulario.jsp">Editar precio de un
			producto</a>
	<p>
		<a href="borrarFormulario.jsp">Eliminar un producto</a>
	<p>
		<a href="filtrarFormulario.jsp">Filtrar productos por sección</a>
	<p>
		<%
		out.println("Número de productos disponibles en el almacén: " + ProductoService.productos.size());
		%>
	
</body>
</html>
