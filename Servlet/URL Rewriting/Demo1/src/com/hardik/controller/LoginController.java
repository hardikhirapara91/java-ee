package com.hardik.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Login Controller
 */
@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * GET
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("index.jsp");
	}

	/**
	 * POST
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		if (username.equals("admin") && password.equals("admin")) {

			// Setting session to expiry in 30 mins
			session.setAttribute("user", username);
			session.setMaxInactiveInterval(60 * 30);
			Cookie cookie = new Cookie("user", username);
			response.addCookie(cookie);

			// Get the encoded URL string
			String encodeURL = response.encodeRedirectUrl("home.jsp");
			response.sendRedirect(encodeURL);
		} else {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("index.jsp");
			out.println("<font color=\"red\">Invalid username or password.</font>");
			dispatcher.include(request, response);
		}
	}
}
