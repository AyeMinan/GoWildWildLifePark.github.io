package com.csm;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class DBManager {
	public Connection getConnection() throws ClassNotFoundException,SQLException{
		
		Connection connection=null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String dbUrl="jdbc:mysql://localhost:3306/animalmanagementsystem"; //neeed to change db name
		String dbUser="root";
		String dbPassword="Invoker768";  //need to change db password
		connection=DriverManager.getConnection(dbUrl,dbUser,dbPassword);
		
		return connection;
		
		
		
	}

}
