package com.agro.Model;

public class Hotel {
	//fields
	String name;
	String city;
	String country;
	String address;
	String email;
	int capacity;
	
	

	//constructor
	public Hotel(String name, String city, String address, String email, int capacity){
		this.address = address;
		this.city = city;
		this.email = email;
		this.name = name;
		this.capacity = capacity;
	}

	//getters & setters
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	
	
}
