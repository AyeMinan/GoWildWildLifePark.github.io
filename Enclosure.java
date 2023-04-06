package com.csm.Entity;

public class Enclosure {
	private int Enclosure_Id;
	private String Enclosure_type;
	private String Location;
	public int getEnclosure_Id() {
		return Enclosure_Id;
	}
	public void setEnclosure_Id(int enclosure_Id) {
		Enclosure_Id = enclosure_Id;
	}
	public String getEnclosure_type() {
		return Enclosure_type;
	}
	public void setEnclosure_type(String enclosure_type) {
		Enclosure_type = enclosure_type;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public Enclosure(int enclosure_Id, String enclosure_type, String location) {
		super();
		Enclosure_Id = enclosure_Id;
		Enclosure_type = enclosure_type;
		Location = location;
	}
	public Enclosure(String enclosure_type, String location) {
		super();
		Enclosure_type = enclosure_type;
		Location = location;
	}
	public static void add(Enclosure e) {
		// TODO Auto-generated method stub
		
	}
}
	
