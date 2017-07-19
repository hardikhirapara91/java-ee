package com.hardik.dao;

import java.sql.Connection;
import java.sql.SQLException;

import com.hardik.bean.User;
import com.hardik.util.DBConnection;
import com.mysql.jdbc.PreparedStatement;

/**
 * User Database Operations
 * @author HARDIK HIRAPARA
 *
 */
public class UserDao {

	public static boolean addUser(User user) {
		
		Connection connection = DBConnection.getConnection(); 
		String query = "INSERT INTO `user`(`uname`,`email`,`password`) VALUES(?,?,?)";
		
		try {
			PreparedStatement psts = (PreparedStatement) connection.prepareStatement(query);
			psts.setString(1, user.getUname());
			psts.setString(2, user.getEmail());
			psts.setString(3, user.getPassword());
			
			int result = psts.executeUpdate();
			
			if(result > 0) {
				return true;
			} else {
				return false;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
