<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BORRAR FORMULARIO</title>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<h2>Eliminar un producto</h2>
	<form action="ProductoController" method="post">
		<input type="hidden" name="ProductoServiceMethod" value="borrar">
		<p>
			Nombre:<input type="text" name="nombre">
		<p>
			<input type="submit" name="borrar el producto">
	</form>
</body>
</html>