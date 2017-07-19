package com.hardik.javaee.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * LOGIN CONTROLLER SERVLET
 */
@WebServlet("/Login")
public class LoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * POST
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		if (username.equals("admin") && password.equals("admin")) {
			// Setting cookie to expiry in 30 mins
			Cookie loginCookie = new Cookie("user", username);
			loginCookie.setMaxAge(60 * 30);
			response.addCookie(loginCookie);
			response.sendRedirect("home.jsp");
		} else {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();

			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			out.println("<font color=\"red\">Invalid username or password.</font>");
			dispatcher.include(request, response);
		}
	}

	/**
	 * GET
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}
}
