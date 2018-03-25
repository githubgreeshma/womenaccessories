package com.src.service;

import java.sql.SQLException;

import com.src.model.Accbuymodel;
import com.src.model.infomodel;
import com.src.model.loginmodel;
import com.src.model.registermodel;

public interface Dbinterface {
	
	public int insert(registermodel rm)throws SQLException;
	
	public boolean check(loginmodel lm)throws SQLException;

	public int insertbuy(infomodel im)throws SQLException;

	public void delete(infomodel im)throws SQLException;
	
	public Accbuymodel getaccess(String name) throws SQLException;
	
		
}
