package com.src.service;

public class Dbfactory {

	private Dbfactory()
	{
		
	}
	
	private static Dbinterface di;
	public static Dbinterface getInstance()
	{
		di=new Dbimplementation();
		return di;
	}
}
