package com.luv2code.springdemo.mvc;

import java.util.ArrayList;
import java.util.LinkedHashMap;

public class Student {
	//field for first name value
	private String firstName = "John";
	//field for last name value 
	private String lastName = "Doe";
	//field for country result
	private String country;
	//field for radiobutton result
	private String favoriteLanguage;
	//array for checkboxes result
	private String[] operatingSystems;
	
	//map to populate countries list
	private LinkedHashMap<String, String> countryList;
	//simple array to populate countries list
	private ArrayList<String> countryOptions;
	//map to populate radio buttons
	private LinkedHashMap<String, String> favoriteLanguageOptions;
	//simple array to populate radiobuttons
	private ArrayList<String> favoriteLanguageOptions1;
	
	public Student() {
		//add countries to map
		countryList = new LinkedHashMap<>();
		countryList.put("BR", "2Brazil");
		countryList.put("FR", "2France");
		countryList.put("DE", "2Germany");
		countryList.put("IN", "2India");
		countryList.put("UA", "2Ukraine");
		//add countries to array
		countryOptions = new ArrayList<>();
		countryOptions.add("1Brazil");
		countryOptions.add("1France");
		countryOptions.add("1Gabon");
		countryOptions.add("1Australia");
		//add languages to map
		favoriteLanguageOptions = new LinkedHashMap<>();
		favoriteLanguageOptions.put("Java", "Java");
		favoriteLanguageOptions.put("C#", "C#");
		favoriteLanguageOptions.put("PHP", "PHP");
		favoriteLanguageOptions.put("Ruby", "Ruby");
		//add languages to array
		favoriteLanguageOptions1 = new ArrayList<>();
		favoriteLanguageOptions1.add("Jaba");
		favoriteLanguageOptions1.add("PPP");
		favoriteLanguageOptions1.add("C*");
		favoriteLanguageOptions1.add("Emerald");
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

	public LinkedHashMap<String, String> getFavoriteLanguageOptions() {
		return favoriteLanguageOptions;
	}

	public ArrayList<String> getFavoriteLanguageOptions1() {
		return favoriteLanguageOptions1;
	}

	public void setFavoriteLanguageOptions1(ArrayList<String> favoriteLanguageOptions1) {
		this.favoriteLanguageOptions1 = favoriteLanguageOptions1;
	}
	
}
