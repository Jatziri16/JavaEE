<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Imports -->
<%@ page import="mx.com.cursodia.javaEE2022.DataBaseHelper"%>
<%
		int cve = Integer.parseInt(request.getParameter("clave"));
		String titulo = request.getParameter("titulo");
		float precio = Float.parseFloat(request.getParameter("precio"));
		int cveprov = Integer.parseInt(request.getParameter("cveprov"));
		int inventario = Integer.parseInt(request.getParameter("inventario"));
		
		String query = "INSERT INTO videojuegos (cve_vid,tit_vid,pre_vid,cveprov_vid,inv_vid) VALUES ";
		query += "("+cve+",'"+titulo+"',"+precio+","+cveprov+","+inventario+")";
		
		DataBaseHelper dbh = new DataBaseHelper();
		int filas = dbh.modificarVideojuego(query);
		
		response.sendRedirect("MostrarVideojuegos.jsp");
 %>