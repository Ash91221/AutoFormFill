package com.app.loginReg;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;


/**
 * Servlet implementation class OtpValidation
 */
@WebServlet("/OtpValidation.do")

public class OtpValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	int n;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OtpValidation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		Random r = new Random();
		n = 100000 + r.nextInt(900000);
        //String password = request.getParameter("password");
		String message =  "Otp is: "+String.valueOf(n);
        //request.setAttribute("OTP",message);
        request.getSession().setAttribute("OTP", Integer.toString(n));
        SendMail.send(message,(String)request.getSession().getAttribute("email"));
		//System.out.println((String)request.getSession().getAttribute("email"));
		//System.out.println(Integer.toString(n));
		RequestDispatcher rd = request.getRequestDispatcher("OTP.jsp");
		rd.forward(request, response);
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//HttpSession s = request.getSession();
		String num = request.getParameter("o1");
		//String str = (String) request.getAttribute("OTP");
		//System.out.println(str);
		if(num.equals(Integer.toString(n)))
		{
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);

		}
		else
		{
			request.setAttribute("error1", "Invalid OTP");
			RequestDispatcher rd = request.getRequestDispatcher("OTP.jsp");
			rd.forward(request, response);
		}
	}

	
}
