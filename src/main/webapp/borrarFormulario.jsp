<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="ProductoController" method="post">
		<input type="hidden" name="ProductoServiceMethod" value="borrar">
		Tiene que introducir el nombre del producto que quiere borrars
		<p>
			Nombre:<input type="text" name="nombre">
		<p>
			<input type="submit" name="borrar el producto">
	</form>
</body>
</html>