package mx.com.cursodia.javaEE2022.DataBaseH;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBaseHelper {

	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost/gamers";
	private static final String USUARIO = "root";
	private static final String CLAVE = "";
	Connection con = null;
	Statement stm = null;
	
	public Connection getCon() {
		return con;
	}
	public Statement getStm() {
		return stm;
	}

	public int modificarVideojuego(String query) throws SQLException
	{
		
		int filas = 0;
		
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL, USUARIO, CLAVE); //DB, User, PSW
			stm = con.createStatement();
			filas = stm.executeUpdate(query);
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
		return filas;
	}
	
	public ResultSet seleccionarVideojuegos(String query)
	{
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL, USUARIO, CLAVE); //DB, User, PSW
			stm = con.createStatement();
			rs = stm.executeQuery(query);
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
			//if(stm != null) stm.close();
			//if(con != null) con.close();
			/* Si cerramos aqui el ResultSet, no podrán acceder a los datos cuando lo enviemos*/
			//if(rs != null) rs.close(); 
		}
		return rs;
	}
}
