<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modificar producto</title>
</head>
<body>
	<form action="ProductoController" method="post">
		<input type="hidden" name="ProductoServiceMethod" value="modificar">
		Tiene que introducir el nombre del producto del que quiere actualizar
		el precio y el nuevo precio
		<p>

			Nombre:<input type="text" name="nombre">
		<p>
			Precio: <input type="number" name="precio">
		<p>
			<input type="submit" name="modificar precio de producto">
	</form>
</body>
</html>