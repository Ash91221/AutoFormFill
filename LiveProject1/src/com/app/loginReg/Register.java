package com.app.loginReg;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
		Connection con;
		PreparedStatement st1;
		try
		{
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","root");
			String n1 = request.getParameter("r1");
			String n2 = request.getParameter("r2");
			String n3 = request.getParameter("r3");
			String n4 = request.getParameter("r4");
			st1 = con.prepareStatement("insert into RLDetails(full_name,username,password,mobileno) values(?,?,?,?)");
			st1.setString(1,n1);
			st1.setString(2,n2);
			st1.setString(3,n3);
			st1.setString(4,n4);
			st1.executeUpdate();
			request.setAttribute("error","Registration Successful");
			RequestDispatcher rd = request.getRequestDispatcher("LoginReg.jsp");
			rd.forward(request,response);
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
