package com.app.view;

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
 * Servlet implementation class Recent
 */
@WebServlet("/Recent.do")
public class Recent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		Connection con;
		Statement st1;
		ResultSet rs;
		RequestDispatcher rd = request.getRequestDispatcher("/common/header.jsp");
		rd.include(request, response);
		RequestDispatcher rd1 = request.getRequestDispatcher("/common/nav.jsp");
		rd1.include(request, response);
		try
		{
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","root");
		st1 = con.createStatement();
		String e = (String) request.getSession().getAttribute("email");
		rs = st1.executeQuery("select * from ODetails");
		while(rs.next())
		{
			String e1 = rs.getString("email");
			if(e.equals(e1))
			{
			out.println("<html><head>");
			out.println("<meta charset='UTF-8'>");
			out.println("<meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>");
			out.println("<title>Recent Bookings</title>");
			out.println("<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css'>");
			out.println("<script src='https://code.jquery.com/jquery-3.1.1.slim.min.js' ></script>");
			out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js'></script>");
			out.println("<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js'></script>");
			out.println("<style>");
			out.println("#l p{padding-left:20px;}");
			out.println("#r p{padding-right:20px;}");
			out.println("</style></head><body>");
			out.println("<center><div class = 'card bg-info' style='width: 1000px; margin-top:20px'>");
			out.println("<div class = 'card-header'>");
			out.println("<h4>"+rs.getString("DOB")+"</h4>");
			out.println("</div><div class = 'card-body'><div id = 'l'>");
			out.println("<p align = 'left'>"+rs.getString("type")+" Number:	"+rs.getString("number")+"</p>");
			out.println("<p align = 'left'>From:	"+rs.getString("src")+"</p>");
			out.println("<p align = 'left'>To:	"+rs.getString("dest")+"</p>");
			out.println("<p align = 'left'>No.of Passengers:	"+rs.getInt("NOP")+"</p>");
			out.println("</div><div id = 'r'>");
			out.println("<p align = 'right'>Date of Travel:	"+rs.getString("DOT")+"</p>");
			out.println("<p align = 'right'>Departure Time:	"+rs.getString("DT")+"</p>");
			out.println("<p align = 'right'>Arrival Time:	"+rs.getString("AT")+"</p>");
			out.println("</div></div></div></center></body></html>");
			}
		}
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}



}
