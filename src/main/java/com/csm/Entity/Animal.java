package com.csm.Entity;

import java.time.Year;

public class Animal {
private int Animal_Id;
private String Animal_Name;
private String Animal_Gender;
private Year Year_arrived;
private int Keepers_Id;
private int Diet_Id;
private int Species_Id;
private int Enclosure_Id;

private String Keepers_name;
private int totalAnimal;

public int getAnimal_Id() {
	return Animal_Id;
}
public void setAnimal_Id(int animal_Id) {
	Animal_Id = animal_Id;
}
public String getAnimal_Name() {
	return Animal_Name;
}
public void setAnimal_Name(String animal_Name) {
	Animal_Name = animal_Name;
}
public String getAnimal_Gender() {
	return Animal_Gender;
}
public void setAnimal_Gender(String animal_Gender) {
	Animal_Gender = animal_Gender;
}
public Year getYear_arrived() {
	return Year_arrived;
}
public void setYear_arrived(Year year_arrived) {
	Year_arrived = year_arrived;
}
public int getKeepers_Id() {
	return Keepers_Id;
}
public void setKeepers_Id(int keepers_Id) {
	Keepers_Id = keepers_Id;
}
public int getDiet_Id() {
	return Diet_Id;
}
public void setDiet_Id(int diet_Id) {
	Diet_Id = diet_Id;
}
public int getSpecies_Id() {
	return Species_Id;
}
public void setSpecies_Id(int species_Id) {
	Species_Id = species_Id;
}
public int getEnclosure_Id() {
	return Enclosure_Id;
}
public void setEnclosure_Id(int enclosure_Id) {
	Enclosure_Id = enclosure_Id;
}
public String getKeepers_name() {
	return Keepers_name;
}
public void setKeepers_name(String keepers_name) {
	Keepers_name = keepers_name;
}
public int getTotalAnimal() {
	return totalAnimal;
}
public void setTotalAnimal(int totalAnimal) {
	this.totalAnimal = totalAnimal;
}
public Animal(int animal_Id, String animal_Name, String animal_Gender,Year year_arrived, int keepers_Id, int diet_Id,
		int species_Id, int enclosure_Id) {
	super();
	Animal_Id = animal_Id;
	Animal_Name = animal_Name;
	Animal_Gender = animal_Gender;
	Year_arrived = year_arrived;
	Keepers_Id = keepers_Id;
	Diet_Id = diet_Id;
	Species_Id = species_Id;
	Enclosure_Id = enclosure_Id;
}
public Animal(String animal_Name, String animal_Gender, Year year_arrived, int keepers_Id, int diet_Id, int species_Id,
		int enclosure_Id) {
	super();
	Animal_Name = animal_Name;
	Animal_Gender = animal_Gender;
	Year_arrived = year_arrived;
	Keepers_Id = keepers_Id;
	Diet_Id = diet_Id;
	Species_Id = species_Id;
	Enclosure_Id = enclosure_Id;
}
public Animal(String animal_Name, String animal_Gender, Year year_arrived, int keepers_Id, int diet_Id, int species_Id,
		int enclosure_Id, String keepers_name, int totalAnimal) {
	super();
	Animal_Name = animal_Name;
	Animal_Gender = animal_Gender;
	Year_arrived = year_arrived;
	Keepers_Id = keepers_Id;
	Diet_Id = diet_Id;
	Species_Id = species_Id;
	Enclosure_Id = enclosure_Id;
	Keepers_name = keepers_name;
	this.totalAnimal = totalAnimal;
}
public Animal(int animal_Id, String animal_Name, String animal_Gender, Year year_arrived, int keepers_Id, int diet_Id,
		int species_Id, int enclosure_Id, String keepers_name, int totalAnimal) {
	super();
	Animal_Id = animal_Id;
	Animal_Name = animal_Name;
	Animal_Gender = animal_Gender;
	Year_arrived = year_arrived;
	Keepers_Id = keepers_Id;
	Diet_Id = diet_Id;
	Species_Id = species_Id;
	Enclosure_Id = enclosure_Id;
	Keepers_name = keepers_name;
	this.totalAnimal = totalAnimal;
}
public Animal(String keepers_name, int totalAnimal) {
	super();
	Keepers_name = keepers_name;
	this.totalAnimal = totalAnimal;
}
public Animal(String animal_Name, String animal_Gender, Year year_arrived, int keepers_Id, String keepers_name,
		int totalAnimal) {
	super();
	Animal_Name = animal_Name;
	Animal_Gender = animal_Gender;
	Year_arrived = year_arrived;
	Keepers_Id = keepers_Id;
	Keepers_name = keepers_name;
	this.totalAnimal = totalAnimal;
}
public Animal(int animal_Id, String animal_Name, String animal_Gender, Year year_arrived, int keepers_Id,
		String keepers_name, int totalAnimal) {
	super();
	Animal_Id = animal_Id;
	Animal_Name = animal_Name;
	Animal_Gender = animal_Gender;
	Year_arrived = year_arrived;
	Keepers_Id = keepers_Id;
	Keepers_name = keepers_name;
	this.totalAnimal = totalAnimal;
}
public Animal(int animal_Id, String animal_Name, String animal_Gender, Year year_arrived, int keepers_Id,
		String keepers_name) {
	super();
	Animal_Id = animal_Id;
	Animal_Name = animal_Name;
	Animal_Gender = animal_Gender;
	Year_arrived = year_arrived;
	Keepers_Id = keepers_Id;
	Keepers_name = keepers_name;
}
public Animal(int totalAnimal) {
	super();
	this.totalAnimal = totalAnimal;
}


}
