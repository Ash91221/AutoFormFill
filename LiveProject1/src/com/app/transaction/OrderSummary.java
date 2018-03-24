package com.app.transaction;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OrderSummary
 */
@WebServlet("/OrderSummary.do")
public class OrderSummary extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderSummary() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String type = (String) request.getSession().getAttribute("type");
		String number = (String) request.getSession().getAttribute("number");
		String src = (String) request.getSession().getAttribute("src");
		String dest = (String) request.getSession().getAttribute("dest");
		String DOT = (String) request.getSession().getAttribute("DOT");
		String DTime = (String) request.getSession().getAttribute("DTime");
		String ATime = (String) request.getSession().getAttribute("ATime");
		String email = (String) request.getSession().getAttribute("email");
		ArrayList arr = (ArrayList) request.getSession().getAttribute("Details");
		int n = arr.size();
		Date d = new Date();
		String strDate = d.toString();
		Connection con;
		PreparedStatement st1;
		try
		{
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","root");
			st1 = con.prepareStatement("insert into ODetails values(?,?,?,?,?,?,?,?,?,?)");
			st1.setString(1,email);
			st1.setString(2,type);
			st1.setString(3,number);
			st1.setString(4,src);
			st1.setString(5,dest);
			st1.setInt(6,n);
			st1.setString(7,strDate);
			st1.setString(8,DOT);
			st1.setString(9,DTime);
			st1.setString(10,ATime);
			st1.executeUpdate();
			RequestDispatcher rd = request.getRequestDispatcher("Order.jsp");
			rd.forward(request,response);
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
		
	}

}
