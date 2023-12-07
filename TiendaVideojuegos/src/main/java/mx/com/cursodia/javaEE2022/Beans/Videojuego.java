package mx.com.cursodia.javaEE2022.Beans;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import mx.com.cursodia.javaEE2022.DataBaseH.DataBaseHelper;

public class Videojuego {
	private int cve_vid;
	private String tit_vid;
	private float pre_vid;
	private int cveprov_vid;
	private int inv_vid;
	
	public Videojuego() {}
	
	public Videojuego(int cve_vid, String tit_vid, float pre_vid, int cveprov_vid, int inv_vid) 
	{
		this.cve_vid = cve_vid;
		this.tit_vid = tit_vid;
		this.pre_vid = pre_vid;
		this.cveprov_vid = cveprov_vid;
		this.inv_vid = inv_vid;
	}
	public String getTit_vid() 
	{
		return tit_vid;
	}
	public void setTit_vid(String tit_vid) 
	{
		this.tit_vid = tit_vid;
	}
	public float getPre_vid()
	{
		return pre_vid;
	}
	public void setPre_vid(float pre_vid) 
	{
		this.pre_vid = pre_vid;
	}
	public int getCveprov_vid() 
	{
		return cveprov_vid;
	}
	public void setCveprov_vid(int cveprov_vid) 
	{
		this.cveprov_vid = cveprov_vid;
	}
	public int getInv_vid() 
	{
		return inv_vid;
	}
	public void setInv_vid(int inv_vid) 
	{
		this.inv_vid = inv_vid;
	}
	public int getCve_vid() 
	{
		return cve_vid;
	}
	
	public static Videojuego getVideojuego(int cve) throws SQLException
	{
		String query = "SELECT * FROM videojuegos WHERE cve_vid="+cve;
		DataBaseHelper dbh = new DataBaseHelper();
		List<Videojuego> lista = dbh.executeQueryVid(query);
		return lista.get(0);
	}
	public static List<Videojuego> getVideojuegos() throws SQLException
	{
		String query = "SELECT * FROM videojuegos";
		DataBaseHelper dbh = new DataBaseHelper();
		return dbh.executeQueryVid(query);
	}
	public static void setVideojuego(int cve, String titulo, float precio, int cveprov, int inventario) throws SQLException
	{
		String query = "INSERT INTO videojuegos (cve_vid,tit_vid,pre_vid,cveprov_vid,inv_vid) VALUES ";
		query += "("+cve+",'"+titulo+"',"+precio+","+cveprov+","+inventario+")";
		DataBaseHelper dbh = new DataBaseHelper();
		dbh.modificarVideojuego(query);
	}
	public static int updateVideojuego(int cve, String titulo, float precio, int cveprov, int inventario) throws SQLException
	{
		/*String query = "UPDATE videojuegos "
			+ "SET tit_vid='"+titulo+"', pre_vid="+precio+", cveprov_vid="+cveprov+", inv_vid="+inventario+" "
			+ "WHERE cve_vid = "+cve;
		DatabaseHelper dbh = new DatabaseHelper();
		int n = dbh.insertarVideojuego(query);
		return n;*/
		
		String query = "UPDATE videojuegos "
			+ "SET tit_vid='"+titulo+"', pre_vid="+precio+", cveprov_vid="+cveprov+", inv_vid="+inventario+" "
			+ "WHERE cve_vid="+cve;
		DataBaseHelper dbh = new DataBaseHelper();
		return dbh.modificarVideojuego(query);
	}
	
	@Override
	public String toString() {
		return "Videojuego [cve_vid=" + cve_vid + ", tit_vid=" + tit_vid + ", pre_vid=" + pre_vid + ", cveprov_vid="
				+ cveprov_vid + ", inv_vid=" + inv_vid + "]";
	}
}
