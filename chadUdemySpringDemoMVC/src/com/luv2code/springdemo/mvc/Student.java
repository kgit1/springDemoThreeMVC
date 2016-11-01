package com.luv2code.springdemo.mvc;

import java.util.ArrayList;
import java.util.LinkedHashMap;

public class Student {
	
	private String firstName = "John";
	private String lastName = "Doe";
	private String country;
	private String favoriteLanguage;
	private String[] operatingSystems;
	private LinkedHashMap<String, String> countryList;
	private ArrayList<String> countryOptions;
	
	public Student() {
		countryOptions = new ArrayList<>();
		countryOptions.add("1Brazil");
		countryOptions.add("1France");
		countryOptions.add("1Gabon");
		countryOptions.add("1Australia");
		countryList = new LinkedHashMap<>();
		countryList.put("BR", "2Brazil");
		countryList.put("FR", "2France");
		countryList.put("DE", "2Germany");
		countryList.put("IN", "2India");
		countryList.put("UA", "2Ukraine");
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public LinkedHashMap<String, String> getCountryList() {
		return countryList;
	}

	public ArrayList<String> getCountryOptions() {
		return countryOptions;
	}

	public String getFavoriteLanguage() {
		return favoriteLanguage;
	}

	public void setFavoriteLanguage(String favoriteLanguage) {
		this.favoriteLanguage = favoriteLanguage;
	}

	public String[] getOperatingSystems() {
		return operatingSystems;
	}

	public void setOperatingSystems(String[] operatingSystems) {
		this.operatingSystems = operatingSystems;
	}
	
}
