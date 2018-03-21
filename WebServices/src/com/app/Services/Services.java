package com.app.Services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Services {

	public String[] idService(String id)
	{
		Connection con;
		Statement st;
		PreparedStatement st1;
		ResultSet rs;
		String[] arr1 = null;
		try
		{
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","root");
		st = con.createStatement();
		rs = st.executeQuery("select * from ADetails");
		
		while(rs.next())
		{
			String u1 = rs.getString("Aid");
			if(id.equals(u1))
			{
				String name = rs.getString("Name");
				String mobile = rs.getString("Mobile");
				String gender = rs.getString("Gender");
				String mailid = rs.getString("Mail");
				int age = rs.getInt("Age");
				/*request.getSession().setAttribute("Aid", id);
				request.getSession().setAttribute("name", name);
				request.getSession().setAttribute("mobile", mobile);
				request.getSession().setAttribute("gender", gender);
				request.getSession().setAttribute("mailid", mailid);
				request.getSession().setAttribute("age", age);*/
				//RequestDispatcher rd = request.getRequestDispatcher("OtpValidation");
				//rd.forward(request, response);
				//response.sendRedirect("OtpValidation");
				String[] arr = {id,name,mobile,gender,mailid,Integer.toString(age)};
				System.out.println(id+" "+name+" "+mobile+" "+gender+" "+mailid+" "+age);
				arr1 = arr;
			}
			else
			{
				
			}
		}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return arr1;
		
	}
	public void getService()
	{
		
	}
	public void paymentService()
	{
		
	}
}
