<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista de Videojuegos</title>
	</head>
	<body>
		<!-- Imports -->
		<%@ page import="mx.com.cursodia.javaEE2022.DataBaseHelper"%>
		<%@ page import="java.sql.ResultSet"%>
		<%@ page import="java.sql.SQLException"%>
		<% 
			ResultSet rs = null;
			DataBaseHelper dbh = new DataBaseHelper();
			try {
				String query = "SELECT * FROM videojuegos";
				rs = dbh.seleccionarVideojuegos(query);
				
				while(rs.next())
				{%>
					<%= rs.getInt("cve_vid") %>
					<%= rs.getString("tit_vid") %>
					<%= rs.getFloat("pre_vid") %>
					<%= rs.getInt("cveprov_vid") %>
					<%= rs.getInt("inv_vid") %>
					<br>
				<%}
			}
			catch (SQLException e)
			{
				System.out.println("Error al acceder a la Base de Datos" +e.getMessage());
			}
			finally
			{
				if(rs != null) rs.close();
				if(dbh.getCon() != null) dbh.getCon().close();
				if(dbh.getStm() != null) dbh.getStm().close();
			}	
		%>
		<a href="FormularioInsertarVideojuego.jsp">Inserta videojuego</a>
	</body>
</html>