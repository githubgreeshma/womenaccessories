package com.src.service;

import java.sql.Connection;

import javax.swing.JOptionPane;

import com.src.model.Accbuymodel;
import com.src.model.infomodel;
import com.src.model.loginmodel;
import com.src.model.registermodel;

import java.sql.*;

public class Dbimplementation implements Dbinterface{

	private static Connection conn;
	
	static
	{
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1522:xe","system","myoracle");
	}
		catch(SQLException | ClassNotFoundException e)
		{
			e.printStackTrace();
		}
	}
	
	public int insert(registermodel rm)throws SQLException
	{
		
		PreparedStatement ps=conn.prepareStatement("insert into registermodel values(?,?,?,?,?,?,?)");
		ps.setString(1, rm.getUsername());
		ps.setString(2, rm.getPassword());
		ps.setString(3, rm.getAge());
		ps.setString(4, rm.getGender());
		ps.setString(5, rm.getPhone());
		ps.setString(6, rm.getAddress());
		ps.setString(7, rm.getEmail());
		return ps.executeUpdate();
}
	
	public boolean check(loginmodel lm)throws SQLException
	{
		String query="select username ,password from registermodel where username='"+lm.getUsername()+"' and password='"+lm.getPassword()+"'";
		Statement stt=conn.createStatement();
		ResultSet rs=stt.executeQuery(query);
		System.out.println(query);
		return rs.next();
	}
	
	
public int insertbuy(infomodel im)throws SQLException
{
	
	PreparedStatement ps=conn.prepareStatement("insert into buy values(?,?,?,?,?,?,?,?)");
	ps.setString(1, im.getName());
	ps.setString(2, im.getDr_no());
	ps.setString(3, im.getStreet());
	ps.setString(4, im.getCity());
	ps.setString(5, im.getState());
	ps.setString(6, im.getPincode());
	ps.setString(7, im.getEmail());
	ps.setString(8, im.getPhone());
	//ps.executeUpdate();
	return ps.executeUpdate();
	
	

	
}

public void delete(infomodel im)throws SQLException
{

	try {
	PreparedStatement ps=conn.prepareStatement("delete from buy where name=?");
   
    ps.setString(1,im.name);
    ps.executeUpdate();
	}
	     catch(Exception e)
     {
         e.printStackTrace();
     }
     
     
    
}


public Accbuymodel getaccess(String name) throws SQLException
{
	PreparedStatement pst=conn.prepareStatement("select * from buy where name=?");
	pst.setString(1,name);
	ResultSet r=pst.executeQuery();
	Accbuymodel abm=new Accbuymodel();
	
	while(r.next())
	{
		abm.setName(r.getString(1));
		abm.setDr_no(r.getString(2));
		abm.setStreet(r.getString(3));
		abm.setCity(r.getString(4));
		abm.setState(r.getString(5));
		abm.setPincode(r.getString(6));
		abm.setEmail(r.getString(7));
		abm.setPhone(r.getString(8));
		
	}
	return abm;
	
}

}

	

