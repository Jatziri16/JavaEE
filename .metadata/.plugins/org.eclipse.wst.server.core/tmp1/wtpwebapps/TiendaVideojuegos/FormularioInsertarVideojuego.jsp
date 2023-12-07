<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html = lang "es">
	<head>
		<%String clave = request.getParameter("CVE");
		System.out.println("Form Insertar Videojuego clave?= "+clave);%>
		<meta charset="UTF-8">
		<%if(Objects.isNull(clave))
		{%>
			<title>Agregar Videojuego</title>
		<%} else {%>
			<title>Editar Videojuego</title>
		<%}%>
		<link rel=stylesheet href="css/style.css" type="text/css">
		<!-- Bootstrap -->
	 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<script type="text/javascript" src="js/validaciones_vid.js"></script>
	</head>
	<body style='background-color: rgba(50, 50, 50, 0.3);'>
		<!-- IMPORTS -->
		<%@ page import="mx.com.cursodia.javaEE2022.Beans.Videojuego"%>
		<%@ page import="mx.com.cursodia.javaEE2022.Beans.Proveedor"%>
		<%@ page import="java.util.List"%>
		<%@ page import="java.util.Objects" %>
		
		<div id="fondo">
			<%if(Objects.isNull(clave))
			{%>
				<h3 class="text-center mt-5 mb-1">Formulario Alta de Nuevo Videojuego</h3>
			<%} else {%>
				<h3 class="text-center mt-5 mb-1">Formulario Editar Videojuego</h3>
			<%}%>
			
			<div class="container rounded-3 contenedor">
				<div class="row align-items-stretch justify-content-center">
					<div class="login-container col-7 col-sm-6 col-md-5 col-xl-5 rounded-end shadow">
						<p class="text-center">Ingresa los siguientes datos:</p>
						
						<div class="centrar">
						<%if(Objects.isNull(clave))
							{%>
								<!-- FORM -->
								<form class="w-75">
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
											List<Proveedor> listaProveedores = Proveedor.getProveedores();
											for(Proveedor p:listaProveedores)
											{%>
											<option value="<%=p.getCve_prov()%>"><%=p.getCve_prov()%> - <%=p.getNom_prov()%></option>
											<%}
										%>
									</select>
									
									<label for="inventario">Inventario:</label>
									<input class="form-control mb-4" type="text" placeholder="Inventario" name="inventario" id="inventario">
									
									<button class="btn btn-success w-100 mb-2" onclick="validarForms()" type="button">Insertar</button>
									<a class="btn btn-secondary w-100" href="MostrarVideojuegos.jsp" role="button">Cancelar</a>
								</form>
								<%}
							else
							{
								int cve = Integer.parseInt(clave); 
								System.out.println("La clave es: "+cve);
								Videojuego v = Videojuego.getVideojuego(cve);
								System.out.println(v.toString());
								%>
								
								<!-- FORM -->
								<form class="w-75">
									<label for="clave">Clave:</label>
									<input disabled class="form-control mb-2" value="<%=v.getCve_vid()%>" type="text" placeholder="Clave" name="cve" id="clave">
									
									<label for="titulo">Titulo:</label>
									<input class="form-control mb-2" value="<%=v.getTit_vid()%>" type="text" placeholder="Titulo" name="titulo" id="titulo">
									
									<label for="precio">Precio:</label>
									<input class="form-control mb-2" value="<%=v.getPre_vid()%>" type="text" placeholder="Precio" name="precio" id="precio">
									
									<label for="cveprov">Clave del proveedor:</label>
									<select class="form-select" id="cveprov" name="cveprov" value="<%=v.getCveprov_vid()%>">
										<%			
										List<Proveedor> listaProveedores = Proveedor.getProveedores();
										for(Proveedor p:listaProveedores)
										{
											if(v.getCveprov_vid() == p.getCve_prov())
											{%>
												<option selected value="<%=p.getCve_prov()%>"><%=p.getCve_prov()%> - <%=p.getNom_prov()%></option>
											<%}
											else
											{%>
												<option value="<%=p.getCve_prov()%>"><%=p.getCve_prov()%> - <%=p.getNom_prov()%></option>
											<%}
										}%>
									</select>
									
									<label for="inventario">Inventario:</label>
									<input class="form-control mb-4" value="<%=v.getInv_vid()%>" type="text" placeholder="Inventario" name="inventario" id="inventario">
									
									<button class="btn btn-success w-100 mb-2" onclick="validarFormsUpdate()" type="button">Actualizar</button>
									<a class="btn btn-secondary w-100" href="MostrarVideojuegos.jsp" role="button">Cancelar</a>
								</form>
							<%}%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>