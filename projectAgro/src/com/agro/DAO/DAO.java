package com.agro.DAO;

import java.sql.*;
import java.util.ArrayList;

import com.agro.Model.Hotel;
import com.agro.Model.User;
import com.agro.connection.DB;

public class DAO {
	
	//fields
	Connection con = null;
	//DB db = null;
	
	public DAO() {
       
    }

//when a user registers it creates a record in the db
    public void userSignup(User user) throws Exception {
    	
    	String sqlUserUpdate = "INSERT INTO user (email, name, surname, gender, birth_date, password) VALUES (?, ?, ?, ?, ?, ?);  ";
    
    	DB db = new DB();
    	
    	try{
    		db.open();
    		con = db.getConnection();
    		PreparedStatement stm = con.prepareStatement(sqlUserUpdate);
    		
    		stm.setString(1, user.getEmail());
    		stm.setString(2, user.getName());
    		stm.setString(3, user.getSurname());
    		stm.setString(4, user.getGender());
    		stm.setDate(5,  user.getBirthDate());
    		stm.setString(6, user.getPassword());

    		stm.executeUpdate();
    		stm.close();
    		
    	}catch(SQLException e){
			throw new Exception("An error occured" + e.getMessage());
    	}finally{
    		try {
				db.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    } 

  //presents all the registered users as an ArrayList
    public ArrayList<User> getUsers() throws Exception{
    	Connection con = null;
    	DB db = null;
    	Statement stm = null;
    	String sqlQuery ="SELECT * FROM user;";
    	ResultSet rSet = null;
    	try{
    		db.open(); 
    		con =db.getConnection();
    		stm = con.createStatement();
    		rSet = stm.executeQuery(sqlQuery);
    		
    		ArrayList<User> userList = new ArrayList<User>();
    		while(rSet.next()){
    			String name = rSet.getString("name");
    			String surname = rSet.getString("surname");
    			String email = rSet.getString("email");
    			String password = rSet.getString("password");
    			String gender = rSet.getString("gender");
    			java.sql.Date birthDate = rSet.getDate("birth_date");
    			User user= new User(name, surname, email, password, gender, birthDate);
    			userList.add(user);
    		}
    		
    		rSet.close();
    		stm.close();
    		con.close();
    		db.close();
    		
    		return userList;
    	}catch(SQLException e){
    		throw new Exception("An error occured"+e.getMessage());
    	}
    }
    
  //takes user's email and password, checks if ther's a record in the db and returns a user object for this user
    public User authenticateUser(String email, String password){
    	Connection con = null;
    	DB db = new DB();
    	PreparedStatement stm = null;
    	ResultSet rSet = null;
    	String sqlQuery = "SELECT * FROM user WHERE email=? AND password=?; ";
    	User user = null;
    	try {
    		db.open();
    		con = db.getConnection();
			stm = con.prepareStatement(sqlQuery);
			stm.setString(1, email);
			stm.setString(2, password);
			rSet = stm.executeQuery();
			
			
   			if(rSet.next()){
   				String name = rSet.getString("name");
   	    		String surname = rSet.getString("surname");
   	    		String gender = rSet.getString("gender");
   	   			java.sql.Date birthDate = rSet.getDate("birth_date");
   				user= new User(name, surname, email, password, gender, birthDate);
   				
   			}
   			
   			rSet.close();
			stm.close();
			db.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.getMessage();
			e.printStackTrace();
			
		}
		return user;

    }
    
    //returns an arrayList with hotels from a specific region
    public ArrayList<Hotel>getHotelsByCity(String name) throws Exception{
    	Connection con = null;
    	DB db = new DB();
    	PreparedStatement stm = null;
    	ResultSet rSet = null;
    	String sqlQuery = "SELECT * FROM hotels WHERE city=?;";
		ArrayList<Hotel> hotelList = new ArrayList<Hotel>();

    	try {
			db.open();
			con = db.getConnection();
			stm = con.prepareStatement(sqlQuery);
			stm.setString(1, name);
			rSet = stm.executeQuery();

			while(rSet.next()){
				String hname = rSet.getString("hotel_name");
				String hcity = rSet.getString("city");
				String haddress = rSet.getString("address");
				String hemail = rSet.getString("hotel_email");
				int capacity = rSet.getInt("capacity");
				Hotel hotel = new Hotel(hname, hcity, haddress, hemail, capacity);
				hotelList.add(hotel);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return hotelList;

    }
    
    /*
    getUsers
    getHotels
    getActivities
    */
}

