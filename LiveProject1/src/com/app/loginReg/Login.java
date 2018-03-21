package com.app.loginReg;

import java.io.IOException;
import java.io.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String u = request.getParameter("l1");
		String p = request.getParameter("l2");
		response.setContentType("text/html");
		Connection con;
		Statement st;
		PreparedStatement st1;
		ResultSet rs;
		HttpSession s = request.getSession();
		try
		{
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","root");
		st = con.createStatement();
		rs = st.executeQuery("select * from RLDetails");
		int count = 0;
		while(rs.next())
		{
			String u1 = rs.getString("username");
			String p1 = rs.getString("password");
			if(u.equals(u1))
			{
				if(p.equals(p1))
				{
					String name = rs.getString("full_name");
					//out.println("Welcome "+rs.getString("full_name"));
					count=1;
					//break;
					s.setAttribute("fname", name);
					s.setAttribute("email", u1);
					s.setAttribute("from", "login");
					//request.setAttribute("fname",name);
					
					//RequestDispatcher rd = request.getRequestDispatcher("OtpValidation");
					//rd.forward(request, response);
					response.sendRedirect("OtpValidation");
				}
				else
				{
					//out.println("Invalid Password");
					count = -1;
					request.setAttribute("error","Invalid Password");
					RequestDispatcher rd = request.getRequestDispatcher("LoginReg.jsp");
					rd.forward(request, response);
					//response.sendRedirect("LoginReg.jsp");
				}
			}
		}
		if(count == 0)
		{
			request.setAttribute("error","Invalid user, Please Register");
			RequestDispatcher rd = request.getRequestDispatcher("LoginReg.jsp");
			rd.forward(request, response);
		}
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
