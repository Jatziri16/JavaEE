<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Imports -->
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%
		int cve = Integer.parseInt(request.getParameter("clave"));
		String titulo = request.getParameter("titulo");
		float precio = Float.parseFloat(request.getParameter("precio"));
		int cveprov = Integer.parseInt(request.getParameter("cveprov"));
		int inventario = Integer.parseInt(request.getParameter("inventario"));
		
		Connection con = null;
		Statement stm = null;
		
		int filas = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/gamers", "root", ""); //DB, User, PSW
			stm = con.createStatement();
			
			String query = "INSERT INTO videojuegos (cve_vid,tit_vid,pre_vid,cveprov_vid,inv_vid) VALUES ";
			query += "("+cve+",'"+titulo+"',"+precio+","+cveprov+","+inventario+")";
			filas = stm.executeUpdate(query);
			//response.sendRedirect("FormularioInsertarVideojuego");
		} 
		catch (ClassNotFoundException e)
		{
			System.out.println("Error al cargar el driver" +e.getMessage());
		}
		catch(SQLException e)
		{
			System.out.println("Error accediendo a la DB "+e.getMessage());
		}
		finally
		{
			if(stm != null) stm.close();
			if(con != null) con.close();
		}	
 %>