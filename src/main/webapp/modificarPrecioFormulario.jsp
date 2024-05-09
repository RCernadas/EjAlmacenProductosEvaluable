<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modificar producto</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<h2>Modificar precio de un producto</h2>
	<form action="ProductoController" method="post">
		<input type="hidden" name="ProductoServiceMethod" value="modificar">
		<p>
			Nombre:<input type="text" name="nombre">
		<p>
			Precio: <input type="number" name="precio">
		<p>
			<input type="submit" name="modificar precio de producto">
	</form>
</body>
</html>