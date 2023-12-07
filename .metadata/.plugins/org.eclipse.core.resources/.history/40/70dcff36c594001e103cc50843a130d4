package mx.com.cursodia.javaEE2022.Beans;

import java.sql.ResultSet;
import java.sql.SQLException;

import mx.com.cursodia.javaEE2022.DataBaseH.DataBaseHelper;

public class Proveedor {
	private int cve_prov;
	private String nom_prov;
	private String email_prov;
	private String tel_prov;
	
	public Proveedor() {}
	
	public Proveedor(int cve_prov, String nom_prov, String email_prov, String tel_prov) 
	{
		this.cve_prov = cve_prov;
		this.nom_prov = nom_prov;
		this.email_prov = email_prov;
		this.tel_prov = tel_prov;
	}
	
	public String getNom_prov() 
	{
		return nom_prov;
	}
	public void setNom_prov(String nom_prov) 
	{
		this.nom_prov = nom_prov;
	}
	public String getEmail_prov() 
	{
		return email_prov;
	}
	public void setEmail_prov(String email_prov) 
	{
		this.email_prov = email_prov;
	}
	public String getTel_prov() 
	{
		return tel_prov;
	}
	public void setTel_prov(String tel_prov) 
	{
		this.tel_prov = tel_prov;
	}
	public int getCve_prov() 
	{
		return cve_prov;
	}
	
	public static ResultSet getProveedores() throws SQLException
	{		
		String query = "SELECT * FROM proveedores";
		DataBaseHelper dbh = new DataBaseHelper();
		cerrarConexion();
		return dbh.seleccionarRegistros(query);
	}
	private static void cerrarConexion() throws SQLException
	{
		DataBaseHelper dbh = new DataBaseHelper();
		if(dbh.getCon() != null) dbh.getCon().close();
		if(dbh.getStm() != null) dbh.getStm().close();
	}
}
