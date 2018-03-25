package com.src.contrller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.model.registermodel;
import com.src.service.Dbfactory;

/**
 * Servlet implementation class Registercontroller
 */
@WebServlet("/Registercontroller")
public class Registercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registercontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String age=request.getParameter("age");
		String gender=request.getParameter("gender");
		String phone=request.getParameter("phone");
		String address=request.getParameter("address");
		String email=request.getParameter("email");
		
		
	HashMap<String,String> errors=new HashMap<>();
		
		/**int age1=0;
		
		if(age1!=null)
		{
			try {
				
				age1=Integer.parseInt(age1);
				
				if(age1>100)
				{
					errors.put("ageerror", "age less than 100");
				}
				
				else {
					
					request.setAttribute("age", age);
				}
				
			}
		}
		
		
		catch(NumberFormatException nfe)
		{
			errors.put("ageerror", "age must be a number");
		}
		**/
		
		if(username==null | username.length()<=0)
		{
			
			errors.put("usernameerror","username cannot be blank");
		}
		
		
		else
		{
			request.setAttribute("username", username);
		}
	
		
		
		registermodel rm=new registermodel();
		rm.setUsername(username);
		rm.setPassword(password);
		rm.setAge(age);
		rm.setGender(gender);
		rm.setPhone(phone);
		rm.setAddress(address);
		rm.setEmail(email);
		
		
		try {
			Dbfactory.getInstance().insert(rm);
			 
			}
			
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		
		
		request.setAttribute("registerdata", rm);
		RequestDispatcher rd=request.getRequestDispatcher("register2.jsp");
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
