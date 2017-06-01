package com.agro.connection;

import java.sql.*;
public class DB {

	//fields
		private final String dbname = "agrotourismos";
		private final String dbUsername = "root";
		private final String dbPass = "";
		
		private Connection con = null;
		
		public DB() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

	   //methods
	    public Connection getConnection(){
	    	return this.con;
	    }
		
	    public void open() throws SQLException{
	    	try{
	    		// dynamically load the driver's class file into memory
	    		Class.forName("com.mysql.jdbc.Driver").newInstance();
	    	}catch(Exception e){
	    		throw new SQLException("MySQL Driver error: " + e.getMessage());
	    	}
	    	try{
	    		// establish a connection with the database and creates a Connection object (con));
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + dbname, dbUsername, dbPass);
	    	}catch(Exception e){
				// throw SQLException if a database access error occurs
	    		throw new SQLException("Could not establish connection with the Database Server: " + e.getMessage());
	    	}
	    }
	    
	    public void close() throws SQLException{
	    	try {
				// if connection is open
				if (con != null)
					con.close(); // close the connection to the database to end database session

			} catch (Exception e) {

				throw new SQLException("Could not close connection with the Database Server: " + e.getMessage());
			}

	    }
	
	
}
