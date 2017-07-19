package com.hardik.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Database Connection
 * @author HARDIK HIRAPARA
 *
 */
public class DBConnection {

	/**
	 * Return Database
	 * @return conneciton
	 * @throws SQLException 
	 */
	public static Connection getConnection() {
		
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			if(connection == null){
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/reg_form","root","admin");
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return connection;
	}
}
