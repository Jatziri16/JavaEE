<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html = lang "es">
	<head>
		<meta charset="UTF-8">
		<title>Formulario Alta Videojuego</title>
		<link rel=stylesheet href="css/style.css" type="text/css">
		<!-- Bootstrap -->
	 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script type="text/javascript" src="js/validaciones_vid.js"></script>
	</head>
	<body style='background-color: rgba(50, 50, 50, 0.3);'>
		<!-- IMPORTS -->
		<%@ page import="mx.com.cursodia.javaEE2022.Beans.Proveedor"%>
		<%@ page import="java.sql.ResultSet"%>
		<%@ page import="java.sql.SQLException"%>
		
		<div id="fondo">
			<h3 class="text-center mt-5 mb-1">Formulario Alta de Nuevo Videojuego</h3>
			<div class="container rounded-3 contenedor">
				<div class="row align-items-stretch justify-content-center">
					<div class="login-container col-7 col-sm-6 col-md-5 col-xl-5 rounded-end shadow">
						<p class="text-center">Ingresa los siguientes datos:</p>
						<div class="centrar">
							<!-- FORM -->
							<form action="InsertarVideojuego.do" method="GET" class="w-75">
								<label for="clave">Clave:</label>
								<input class="form-control mb-2" type="text" placeholder="Clave" name="cve" id="clave">
								
								<label for="titulo">Titulo:</label>
								<input class="form-control mb-2" type="text" placeholder="Titulo" name="titulo" id="titulo">
								
								<label for="precio">Precio:</label>
								<input class="form-control mb-2" type="text" placeholder="Precio" name="precio" id="precio">
								
								<!-- <label for="cveprov">Clave del proveedor:</label>
								<input class="form-control mb-2" type="text" placeholder="Clave del proveedor" name="cveprov" id="cveprov"> -->
								Clave del proveedor:
								<select name="Proveedor" class="form-select mb-2" name="cveprov" id="cveprov">
									<option value="" disabled>Selecciona un proveedor</option>
									<%
										ResultSet rsProv = null;
										try {
											rsProv = Proveedor.getProveedores();
											
											while(rsProv.next())
											{%>
											<option value="<%= rsProv.getInt("cve_prov") %>"><%= rsProv.getInt("cve_prov") %> - <%= rsProv.getString("nom_prov") %></option>
											<%}
										}
										catch (SQLException e)
										{
											System.out.println("Error al acceder a la Base de Datos " +e.getMessage());
										}
										finally
										{
											if(rsProv != null) rsProv.close();
										}	
									%>
								</select>
								
								<label for="inventario">Inventario:</label>
								<input class="form-control mb-4" type="text" placeholder="Inventario" name="inventario" id="inventario">
								
								<button class="btn btn-success w-100 mb-2" onclick="validarForms()" type="button">Insertar</button>
								<a class="btn btn-secondary w-100" href="MostrarVideojuegos.jsp" role="button">Cancelar</a>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>