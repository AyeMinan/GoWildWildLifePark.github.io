package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Year;
import java.util.ArrayList;

import com.csm.DBManager;
import com.csm.Entity.Animal;

public class AnimalManager {
	public int insert(Animal a) throws ClassNotFoundException, SQLException{
	int row=-1;
	DBManager dbM= new DBManager();
	Connection con=dbM.getConnection();
	
	String sql = "INSERT INTO `animalmanagementsystem`.`animal` (`Animal_Name`, `Animal_Gender`, `Year_Arrived`, `Keepers_Id`, `Diet_Id`, `Species_Id`, `Enclosure_Id`) VALUES (?,?,?,?,?,?,?)";
			
	PreparedStatement pst = con.prepareStatement(sql);
	
	pst.setString(1, a.getAnimal_Name());
	pst.setString(2, a.getAnimal_Gender());
	pst.setInt(3, a.getYear_arrived().getValue());
	pst.setInt(4, a.getKeepers_Id());
	pst.setInt(5, a.getDiet_Id());
	pst.setInt(6, a.getSpecies_Id());
	pst.setInt(7, a.getEnclosure_Id());

	
	
	row = pst.executeUpdate();

	return row;

}
	public ArrayList<Animal> fetchAll()throws ClassNotFoundException, SQLException{
		
		ArrayList<Animal> animal = new ArrayList<Animal>();
		Animal a;
		//Enclosure e;
		
		//1. get connection
				DBManager dbMgr=new DBManager();
				Connection conn=dbMgr.getConnection();
				
		//2.prepare statement
				
				String sql = "SELECT * FROM animal";
				PreparedStatement pstmt=conn.prepareStatement(sql);
				ResultSet rs=pstmt.executeQuery();
				
				
				
				//Resultset => ArrayList
				//column values of Resultset getString("database column name")
				
				//populate the array list from the record of the course table
				while (rs.next())
				{
					a=new Animal(rs.getInt("Animal_Id"),
							rs.getString("Animal_Name"),
							rs.getString("Animal_Gender"),
							Year.of(rs.getInt("Year_arrived")),
							rs.getInt("Keepers_Id"),
						    rs.getInt("Diet_Id"),
						    rs.getInt("Species_Id"),
						    rs.getInt("Enclosure_Id"));
				
					animal.add(a);//add entity object into collection
				}
				
				
				return animal;
				
				
				
						
	}
	public int deleteAnimal(int animalId) throws ClassNotFoundException, SQLException {
		int result=-1;
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		
		String sql = "Delete from animal where Animal_Id = ?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, animalId);
		result = pstmt.executeUpdate();
		return result;
		
	}
	public Animal getById(int animalId) throws ClassNotFoundException, SQLException {
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		String sql = "Select * from animal where Animal_Id=?";
		
		PreparedStatement pstmt= conn.prepareStatement(sql);
		pstmt.setInt(1, animalId);

		ResultSet rs = pstmt.executeQuery();
		Animal animal=null;
		while(rs.next()) {
			animal= new Animal(rs.getInt("Animal_Id"),
					rs.getString("Animal_Name"),
					rs.getString("Animal_Gender"),
					Year.of(rs.getInt("Year_Arrived")),
					rs.getInt("Keepers_Id"),
					rs.getInt("Diet_Id"),
					rs.getInt("Species_Id"),
					rs.getInt("Enclosure_Id"));
		}
		return animal;
		
		
	}
	public int updateAnimal(Animal a) throws ClassNotFoundException, SQLException {
		int result=-1;
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		String sql = "UPDATE `animalmanagementsystem`.`animal` SET `Animal_Name` = ?, `Animal_Gender` = ?, `Year_Arrived` = ?, `Keepers_Id` = ?, `Diet_Id` = ?, `Species_Id` = ?, `Enclosure_Id` = ? WHERE (`Animal_Id` = ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		
		pstmt.setString(1, a.getAnimal_Name());
		pstmt.setString(2, a.getAnimal_Gender());
		pstmt.setInt(3, a.getYear_arrived().getValue());
		pstmt.setInt(4, a.getKeepers_Id());
		pstmt.setInt(5, a.getDiet_Id());
		pstmt.setInt(6, a.getSpecies_Id());
		pstmt.setInt(7, a.getEnclosure_Id());
		pstmt.setInt(8, a.getAnimal_Id());
		
		result = pstmt.executeUpdate();
		
		return result;
	}
	public ArrayList<Animal> fetchDaveorTemi()throws ClassNotFoundException, SQLException{ 
	ArrayList<Animal> animal = new ArrayList<Animal>();
	Animal animalInfo;
	//get connection
	DBManager dbMgr = new DBManager();
	Connection conn = dbMgr.getConnection();
	
	String sql = "select * from animalmanagementsystem.category";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	while (rs.next()) {
		animalInfo = new Animal(
				
				rs.getInt("Animal_ID"),
				rs.getString("Animal_Name"),
				rs.getString("Animal_Gender"),
				Year.of(rs.getInt("Year_Arrived")),
				rs.getInt("Keepers_ID"),
				rs.getString("Keepers_Name"));
		animal.add(animalInfo); //add entity into collection to arraylist
	}

	return animal;

}
	public ArrayList<Animal> fetchTotalAnimal()throws ClassNotFoundException, SQLException{ //select all
		ArrayList<Animal> animals = new ArrayList<Animal>();
		Animal animalTotal;
		// get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();

		// query
		String sql = "SELECT count(animal.Animal_ID) AS totalAnimal\r\n"
				+ "FROM animal";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();


		while (rs.next()) {
			animalTotal = new Animal(
					
					rs.getInt("totalAnimal"));
					
			animals.add(animalTotal); //add entity into collection to arraylist
		}

		return animals;

	}
	public ArrayList<Animal> fetchAnimalGroupByKeeperName()throws ClassNotFoundException, SQLException{ //select all
		ArrayList<Animal> animals = new ArrayList<Animal>();
		Animal animalgroupbykeeper;
		// get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();

		// query
		String sql = "SELECT count(animal.Animal_ID) AS totalAnimal, keepers.Keepers_Name\r\n"
				+ "FROM animal\r\n"
				+ "LEFT JOIN keepers ON\r\n"
				+ "keepers.Keepers_ID = animal.Keepers_ID\r\n"
				+ "GROUP BY keepers.Keepers_ID";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();


		while (rs.next()) {
			animalgroupbykeeper = new Animal(
					
					rs.getString("Keepers_Name"),
					rs.getInt("totalAnimal"));
					
			animals.add(animalgroupbykeeper); //add entity into collection to arraylist
		}

		return animals;

	}




}
