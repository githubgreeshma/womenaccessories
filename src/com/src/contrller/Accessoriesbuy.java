package com.src.contrller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.service.Dbfactory;

/**
 * Servlet implementation class Accessoriesbuy
 */
@WebServlet("/Accessoriesbuy")
public class Accessoriesbuy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Accessoriesbuy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String image=request.getParameter("image");
	
	Accbuymodel abm=new Accbuymodel();
	try {
		abm=Dbfactory.getInstance().getaccess(name);
		request.setAttribute("Living", abm);
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	
	RequestDispatcher rd=request.getRequestDispatcher("info.jsp");
	rd.forward(request, response);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
