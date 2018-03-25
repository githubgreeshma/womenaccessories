package com.src.contrller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.model.infomodel;
import com.src.service.Dbfactory;

/**
 * Servlet implementation class infocontroller
 */
@WebServlet("/infocontroller")
public class infocontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	String confo;
    public infocontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String dr_no=request.getParameter("dr_no");
		String street=request.getParameter("street");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String pincode=request.getParameter("pincode");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		
		
		
		infomodel im=new infomodel();
		im.setName(name);
		im.setDr_no(dr_no);
		im.setStreet(street);
		im.setCity(city);
		im.setState(state);
		im.setPincode(pincode);
		im.setEmail(email);
		im.setPhone(phone);
		
		
		try
		{
		
			Dbfactory.getInstance().insertbuy(im);
			//Dbfactory.getInstance().delete(im);
			//Dbfactory.getInstance().update(im);
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		

		/*try
		{
			Dbfactory.getInstance().delete(im);
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		
		try
		{
			Dbfactory.getInstance().update(im);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}*/
		
		
		request.setAttribute("infodata",im);
		RequestDispatcher rd=request.getRequestDispatcher("info2.jsp");
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
