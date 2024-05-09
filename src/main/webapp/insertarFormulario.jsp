<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Añadir producto</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<h2>Añadir un producto</h2>

	<form action="ProductoController" method="post">
		<input type="hidden" name="ProductoServiceMethod" value="insertar">
		Nombre:<input type="text" name="nombre">
		<p>
			Seccion: <input type="text" name="seccion">
		<p>
			Precio: <input type="number" name="precio">
		<p>
			Stock: <input type="number" name="stock">
		<p>
			<input type="submit" name="insertar un producto">
	</form>
</body>
</html>