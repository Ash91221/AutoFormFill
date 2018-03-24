package com.app.loginReg;

import java.io.IOException;
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
 * Servlet implementation class ForgotPass
 */
@WebServlet("/ForgotPass")
public class ForgotPass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String u = request.getParameter("e1");
		Connection con;
		Statement st;
		ResultSet rs;
		try
		{
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","root");
		st = con.createStatement();
		rs = st.executeQuery("select * from RLDetails");
		while(rs.next())
		{
			String u1 = rs.getString("username");
			if(u.equals(u1))
			{
				request.getSession().setAttribute("userName",u);
				RequestDispatcher rd = request.getRequestDispatcher("OtpValidation1");
				rd.forward(request, response);
			}
		}
		}
		catch(Exception e)
		{
			out.println(e);
		}
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
			String n1 = request.getParameter("f1");
			String n2 = request.getParameter("f2");
			String n3 = (String) request.getSession().getAttribute("userName");
			if(n1.equals(n2))
			{
			st1 = con.prepareStatement("update RLDetails set password = ? where username = ?");
			st1.setString(1,n1);
			st1.setString(2,n3);
			st1.executeUpdate();
			RequestDispatcher rd = request.getRequestDispatcher("LoginReg.jsp");
			rd.forward(request,response);
			}
			else
			{
				request.setAttribute("error", "passwords dont match");
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
