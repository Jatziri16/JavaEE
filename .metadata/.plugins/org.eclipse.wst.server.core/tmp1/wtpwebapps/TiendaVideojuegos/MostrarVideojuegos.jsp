<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista de Videojuegos</title>
		<link rel=stylesheet href="css/mostrarVideojuegos.css" type="text/css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	</head>
	<body>
		<!-- Imports -->
		<%@ page import="mx.com.cursodia.javaEE2022.Beans.Videojuego"%>
		<%@ page import="mx.com.cursodia.javaEE2022.Beans.Proveedor"%>
		<%@ page import="java.util.List"%>
		
		<div class="container">
	        <br>
	        <div class="d-flex justify-content-between mt-3">
	        	<h3>Lista de Videojuegos</h3>
	        	<div>
			        <a class="btn btn-secondary" href="FormularioInsertarVideojuego.jsp" role="button"> Agregar Videojuego </a>
			        <!-- <a class="btn btn-secondary" href="MostrarProveedores.do" role="button"> Proveedores </a>-->
	        	</div>
	        </div>
			
	        <form>
				Filtrar videojuegos por proveedor: 
				<select name="Proveedor" class="form-select" id="selectprov">
					<option value="" disabled>Selecciona un proveedor</option>
					<option value="Todos" selected>Todos</option>
					<%
						List<Proveedor> listaProveedores = Proveedor.getProveedores();
						for(Proveedor p:listaProveedores)
						{%>
						<option value="<%= p.getCve_prov() %>"><%= p.getCve_prov() %> - <%= p.getNom_prov() %></option>
						<%}
					%>
				</select>
			</form>
	        
			<table id="dtBasicExample" class="table table-striped mt-4 mb-5">
	        	<thead>
	            	<tr>
	              		<th>ID</th>
	              		<th>Nombre</th>
	              		<th>Precio</th>
	              		<th>Cve Prov</th>
	              		<th>Inventario</th>
	            	</tr>
	          	</thead>
	          	<tbody>	
	          		<% 
          			List<Videojuego> listaVideojuegos = Videojuego.getVideojuegos();
					for(Videojuego v:listaVideojuegos)
					{%>
						<tr>
							<th><%= v.getCve_vid() %></th>
							<td><%= v.getTit_vid() %></td>
							<td><%= v.getPre_vid() %></td>
							<td><%= v.getCveprov_vid() %></td>
							<td><%= v.getInv_vid() %></td>
							<td><input type="button" class="edit" value="Editar" onclick="location.href= 'FormularioInsertarVideojuego.jsp?CVE=<%=v.getCve_vid()%>'"/></td>
						</tr>
					<%}%>
	          	</tbody>
	        </table>
		</div>
	</body>
</html>