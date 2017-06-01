package com.agro.Model;

public class User {
	
	//fields: user's data
  	private String name;
  	private String surname;
	private String password;
  	private String email;
  	private java.sql.Date birthDate;
  	private String gender;
  	private final int user_id; 
  	//private final String userId;
  	
  	//getters & setters
  	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public java.sql.Date getBirthDate() {
		return birthDate;
	}
	
	public void setBirthDate(java.sql.Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	/*public String getUserId(){
		return this.userId;
	}*/


  	
  	/**
	 * Constructor 
	 * 
	 * @param name, user's first name
	 * @param surname, User's surname
	 * @param email, user's email
	 */
  	public User(String name, String surname, String email, String password, String gender, java.sql.Date birth_date) {
        super();
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.birthDate = birth_date;
        this.user_id = 0;
        // TODO Auto-generated constructor stub
    }
  	
  	//methods
  	public String toString(){
  		return "User's detail's: "+name+surname+email;
  	}

}

