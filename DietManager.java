package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.DBManager;
import com.csm.Entity.*;


public class DietManager {
	public int insert(Diet d) throws ClassNotFoundException, SQLException{
	int row=-1;
	DBManager dbM= new DBManager();
	Connection con=dbM.getConnection();
	
	String sql = "INSERT INTO `animalmanagementsystem`.`diet` (`Diet_type`, `Feeds_per_day`) VALUES (?,?)";
			
	PreparedStatement pst = con.prepareStatement(sql);
	
	pst.setString(1, d.getDiet_type());
	pst.setInt(2, d.getFeeds_per_day());
	
	row = pst.executeUpdate();

	return row;

}
	public ArrayList<Diet> fetchAll()throws ClassNotFoundException, SQLException{
		
		ArrayList<Diet> diet = new ArrayList<Diet>();
		Diet d;
		//Enclosure e;
		
		//1. get connection
				DBManager dbMgr=new DBManager();
				Connection conn=dbMgr.getConnection();
				
		//2.prepare statement
				
				String sql = "SELECT * FROM diet";
				PreparedStatement pstmt=conn.prepareStatement(sql);
				ResultSet rs=pstmt.executeQuery();
				
				
				
				//Resultset => ArrayList
				//column values of Resultset getString("database column name")
				
				//populate the array list from the record of the course table
				while (rs.next())
				{
					d=new Diet(rs.getInt("Diet_Id"),
							rs.getString("Diet_type"),
							rs.getInt("Feeds_per_day"));
				
				diet.add(d);//add entity object into collection
				}
				
				
				return diet;
				
	}
	public int deleteDiet(int dietId) throws ClassNotFoundException, SQLException {
		int result=-1;
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		
		String sql = "Delete from diet where Diet_Id = ?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, dietId);
		result = pstmt.executeUpdate();
		return result;
		
	}
	public Diet getById(int dietId) throws ClassNotFoundException, SQLException {
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		String sql = "Select * from diet where Diet_Id=?";
		
		PreparedStatement pstmt= conn.prepareStatement(sql);
		pstmt.setInt(1, dietId);
		
		ResultSet rss = pstmt.executeQuery();
		Diet diet=null;
		while (rss.next())
		{
			diet=new Diet(rss.getInt("Diet_Id"),
					rss.getString("Diet_type"),
					rss.getInt("Feeds_per_day"));
		
		//add entity object into collection
		}
		
		
		return diet;
	}
	public int updateDiet(Diet d) throws ClassNotFoundException, SQLException {
		int result=-1;
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		String sql = "UPDATE `animalmanagementsystem`.`diet` SET `Diet_type` = ?, `Feeds_per_day` = ? WHERE (`Diet_Id` = ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		System.out.print("Success");
		
		System.out.print(d.getDiet_Id());
		
		System.out.print(d.getDiet_type());
		System.out.print(d.getFeeds_per_day());
		
		pstmt.setString(1,d.getDiet_type());
		pstmt.setInt(2,d.getFeeds_per_day());
		pstmt.setInt(3, d.getDiet_Id());
		
		result = pstmt.executeUpdate();
		System.out.print(result);
		return result;
		
		
	}

}
