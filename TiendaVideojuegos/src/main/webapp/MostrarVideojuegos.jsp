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
		<%@ page import="java.sql.Connection"%>
		<%@ page import="java.sql.Statement"%>
		<%@ page import="java.sql.DriverManager"%>
		<%@ page import="java.sql.SQLException"%>
		<%@ page import="java.sql.ResultSet"%>
		<% 
			Connection con = null;
			Statement stm = null;
			ResultSet rs = null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost/gamers", "root", ""); //DB, User, PSW
				stm = con.createStatement();
				
				String query = "SELECT * FROM videojuegos";
				rs = stm.executeQuery(query);
				
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
			catch (ClassNotFoundException e)
			{
				System.out.println("Error al cargar la libreria" +e.getMessage());
			}
			catch(SQLException e)
			{
				System.out.println("Error accediendo a la DB "+e.getMessage());
			}
			finally
			{
				if(stm != null) stm.close();
				if(con != null) con.close();
				if(rs != null) rs.close();
			}	
		%>
		<a href="FormularioInsertarVideojuego.jsp">Inserta videojuego</a>
	</body>
</html>