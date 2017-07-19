package com.hardik.javaee.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * UPLOAD CONTROLLER
 */
@WebServlet("/Upload")
@MultipartConfig(maxFileSize = 16177215)
public class Upload extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * GET
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		Part filePart = request.getPart("photo");
		
		// Convert File to InputStream
		InputStream is = null;
		if (filePart != null) {
			System.out.println("File Content Type: " + filePart.getContentType());
			System.out.println("File Name: " + filePart.getName());
			System.out.println("Size: " + filePart.getSize());
			is = filePart.getInputStream();
		}
		
		String message = null;
		String query = "INSERT INTO `contacts`(`first_name`,`last_name`,`photo`) VALUES(?,?,?)";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CRUD", "root", "admin");
			PreparedStatement psts = conn.prepareStatement(query);
			psts.setString(1, firstName);
			psts.setString(2, lastName);
			psts.setBlob(3, is);
			
			if (psts.executeUpdate() > 0) {
				message = "File uploaded and saved into database";
			}
		} catch (ClassNotFoundException | SQLException e) {
			message = "ERROR: " + e.getMessage();
			e.printStackTrace();
		}finally {
			if (conn != null) {
				try {
					conn.close();
					System.out.println("Connection closed.");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		// sets the message in request scope
		request.setAttribute("message", message);

		// forwards to the message page
		response.sendRedirect("Message.jsp");
	}

}
