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
		<%@ page import="java.sql.ResultSet"%>
		<%@ page import="java.sql.SQLException"%>
		
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
						ResultSet rsVid = null;
						try {
							rsVid = Videojuego.getVideojuegos();
							
							while(rsVid.next())
							{%>
								<tr>
									<th><%= rsVid.getInt("cve_vid") %></th>
									<td><%= rsVid.getString("tit_vid") %></td>
									<td><%= rsVid.getFloat("pre_vid") %></td>
									<td><%= rsVid.getInt("cveprov_vid") %></td>
									<td><%= rsVid.getInt("inv_vid") %></td>
								</tr>
							<%}
						}
						catch (SQLException e)
						{
							System.out.println("Error al acceder a la Base de Datos" +e.getMessage());
						}
						finally
						{
							if(rsVid != null) rsVid.close();
						}	
					%>
	          	</tbody>
	        </table>
		</div>
	</body>
</html>