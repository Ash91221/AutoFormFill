package com.app.transaction;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Services.Services;
import com.app.Services.ServicesProxy;

/**
 * Servlet implementation class BookTickets1
 */
@WebServlet("/BookTickets1.do")
public class BookTickets1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<Object> ODetails = new ArrayList<Object>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookTickets1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String no = request.getParameter("num");
		String src = request.getParameter("src");
		String dest = request.getParameter("dest");
		String DTime = request.getParameter("d");
		String ATime = request.getParameter("a");
		String DOT = request.getParameter("date");
		String type = request.getParameter("type");
		Date d = new Date();
		int day = d.getDay();
		int month = d.getMonth();
		request.getSession().setAttribute("cday", day);
		request.getSession().setAttribute("cmonth", month);
		request.getSession().setAttribute("src", src);
		request.getSession().setAttribute("dest", dest);
		request.getSession().setAttribute("number", no);
		request.getSession().setAttribute("DTime", DTime);
		request.getSession().setAttribute("ATime", ATime);
		request.getSession().setAttribute("DOT", DOT);
		request.getSession().setAttribute("type", type);
		request.getSession().setAttribute("Details", ODetails);
		RequestDispatcher rd = request.getRequestDispatcher("Book2.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			String Aid = request.getParameter("z1");
			Services s = new ServicesProxy();
			String[] details = s.idService(Aid);
			request.getSession().setAttribute("id", details[0]);
			request.getSession().setAttribute("name", details[1]);
			request.getSession().setAttribute("mobile", details[2]);
			request.getSession().setAttribute("gender", details[3]);
			request.getSession().setAttribute("mailid", details[4]);
			request.getSession().setAttribute("age", details[5]);
			Details d = new Details();
			d.setAid(details[0]);
			d.setName(details[1]);
			d.setEmail(details[4]);
			d.setGender(details[3]);
			d.setMobile(details[2]);
			d.setAge(Integer.parseInt(details[5]));
			ODetails.add(d);
			request.getSession().setAttribute("Details", ODetails);
			request.getSession().setAttribute("AAID", details[0]);
			RequestDispatcher rd = request.getRequestDispatcher("Book2.jsp");
			rd.forward(request, response);
	}

}
