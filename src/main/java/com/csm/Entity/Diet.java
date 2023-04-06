package com.csm.Entity;

public class Diet {
	private int Diet_Id;
	private String Diet_type;
	private int Feeds_per_day;
	public int getDiet_Id() {
		return Diet_Id;
	}
	public void setDiet_Id(int diet_Id) {
		Diet_Id = diet_Id;
	}
	public String getDiet_type() {
		return Diet_type;
	}
	public void setDiet_type(String diet_type) {
		Diet_type = diet_type;
	}
	public int getFeeds_per_day() {
		return Feeds_per_day;
	}
	public void setFeeds_per_day(int feeds_per_day) {
		Feeds_per_day = feeds_per_day;
	}
	public Diet(int diet_Id, String diet_type, int feeds_per_day) {
		super();
		Diet_Id = diet_Id;
		Diet_type = diet_type;
		Feeds_per_day = feeds_per_day;
	}
	public Diet(String diet_type, int feeds_per_day) {
		super();
		Diet_type = diet_type;
		Feeds_per_day = feeds_per_day;
	}


}