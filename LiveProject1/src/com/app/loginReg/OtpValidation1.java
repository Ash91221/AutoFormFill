package com.app.loginReg;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OtpValidation1
 */
@WebServlet("/OtpValidation1")
public class OtpValidation1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       int k;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OtpValidation1() {
        super();
        // TODO Auto-generated constructor stub
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Random r = new Random();
		k = 100000 + r.nextInt(900000);
        String name = (String) request.getSession().getAttribute("userName");
        //String password = request.getParameter("password");
		String message =  "Otp is: "+String.valueOf(k);
        //request.setAttribute("OTP",message);
        request.getSession().setAttribute("OTP", Integer.toString(k));
        SendMail.send(message,name);
		//System.out.println((String)request.getSession().getAttribute("email"));
		//System.out.println(Integer.toString(n));
		RequestDispatcher rd = request.getRequestDispatcher("OTP1.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String num = request.getParameter("o1");
		//String str = (String) request.getAttribute("OTP");
		//System.out.println(str);
		if(num.equals(Integer.toString(k)))
		{
				RequestDispatcher rd = request.getRequestDispatcher("Forgot.jsp");
				rd.forward(request, response);		
		}
		else
		{
			request.setAttribute("error1", "Invalid OTP");
			RequestDispatcher rd = request.getRequestDispatcher("OTP1.jsp");
			rd.forward(request, response);
		}
	}

}
