package com.csm.Entity;

public class Species {
	private int Species_Id;
	private String Species_Gp;
	private String Life_style;
	private String Conversational_status;
	private String Species_type;
	public int getSpecies_Id() {
		return Species_Id;
	}
	public void setSpecies_Id(int species_Id) {
		Species_Id = species_Id;
	}
	public String getSpecies_Gp() {
		return Species_Gp;
	}
	public void setSpecies_Gp(String species_Gp) {
		Species_Gp = species_Gp;
	}
	public String getLife_style() {
		return Life_style;
	}
	public void setLife_style(String life_style) {
		Life_style = life_style;
	}
	public String getConversational_status() {
		return Conversational_status;
	}
	public void setConversational_status(String conversational_status) {
		Conversational_status = conversational_status;
	}
	public String getSpecies_type() {
		return Species_type;
	}
	public void setSpecies_type(String species_type) {
		Species_type = species_type;
	}
	public Species(int species_Id, String species_Gp, String life_style, String conversational_status,
			String species_type) {
		super();
		Species_Id = species_Id;
		Species_Gp = species_Gp;
		Life_style = life_style;
		Conversational_status = conversational_status;
		Species_type = species_type;
	}
	public Species(String species_Gp, String life_style, String conversational_status, String species_type) {
		super();
		Species_Gp = species_Gp;
		Life_style = life_style;
		Conversational_status = conversational_status;
		Species_type = species_type;
	}
	

}
