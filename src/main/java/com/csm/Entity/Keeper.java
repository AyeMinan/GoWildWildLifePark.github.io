package com.csm.Entity;
import java.util.*;

public class Keeper {
	private int Keepers_Id;
	private String Keepers_Rank;
	private String Keepers_Name;
	private Date Date_of_Birth;
	public int getKeepers_Id() {
		return Keepers_Id;
	}
	public void setKeepers_Id(int keepers_Id) {
		Keepers_Id = keepers_Id;
	}
	public String getKeepers_Rank() {
		return Keepers_Rank;
	}
	public void setKeepers_Rank(String keepers_Rank) {
		Keepers_Rank = keepers_Rank;
	}
	public String getKeepers_Name() {
		return Keepers_Name;
	}
	public void setKeepers_Name(String keepers_Name) {
		Keepers_Name = keepers_Name;
	}
	public Date getDate_of_Birth() {
		return Date_of_Birth;
	}
	public void setDate_of_Birth(Date date_of_Birth) {
		Date_of_Birth = date_of_Birth;
	}
	public Keeper(String keepers_Rank, String keepers_Name, Date date_of_Birth) {
		super();
		Keepers_Rank = keepers_Rank;
		Keepers_Name = keepers_Name;
		Date_of_Birth = date_of_Birth;
	}
	public Keeper(int keepers_Id, String keepers_Rank, String keepers_Name, Date date_of_Birth) {
		super();
		Keepers_Id = keepers_Id;
		Keepers_Rank = keepers_Rank;
		Keepers_Name = keepers_Name;
		Date_of_Birth = date_of_Birth;
	}

	
}	