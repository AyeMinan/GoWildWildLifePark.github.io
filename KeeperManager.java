package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.csm.DBManager;
import com.csm.Entity.Keeper;

public class KeeperManager {
	public int insert(Keeper k) throws ClassNotFoundException, SQLException{
	int row=-1;
	DBManager dbM= new DBManager();
	Connection con=dbM.getConnection();
	
	String sql = "INSERT INTO `animalmanagementsystem`.`keepers` (`Keepers_Rank`, `Keepers_Name`, `Date_of_Birth`) VALUES (?,?,?);";
	PreparedStatement pst = con.prepareStatement(sql);
	
	pst.setString(1,k.getKeepers_Rank());
	pst.setString(2,k.getKeepers_Name());
	pst.setDate(3,new java.sql.Date(k.getDate_of_Birth().getTime()));
	
	row = pst.executeUpdate();

	return row;

}
	public ArrayList<Keeper> fetchAll()throws ClassNotFoundException, SQLException{
		
		ArrayList<Keeper> keepers = new ArrayList<Keeper>();
		Keeper k;
		//Enclosure e;
		
		//1. get connection
				DBManager dbMgr=new DBManager();
				Connection conn=dbMgr.getConnection();
				
		//2.prepare statement
				
				String sql = "SELECT * FROM keepers";
				PreparedStatement pstmt=conn.prepareStatement(sql);
				ResultSet rs=pstmt.executeQuery();
				
				
				
				//Resultset => ArrayList
				//column values of Resultset getString("database column name")
				
				//populate the array list from the record of the course table
				while (rs.next())
				{
					k=new Keeper(rs.getInt("Keepers_Id"),
							rs.getString("Keepers_Rank"),
							rs.getString("Keepers_Name"),
							rs.getDate("Date_of_Birth"));
							
					keepers.add(k);//add entity object into collection
				}
				
				
				return keepers;
				
				
				
						
	}
	public int deleteKeeper(int keeperId) throws ClassNotFoundException, SQLException {
		int result=-1;
		DBManager dbMgr=new DBManager();
		Connection conn=dbMgr.getConnection();
		
		String sql = "Delete from keepers where Keepers_Id = ?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, keeperId);
		result = pstmt.executeUpdate();
		return result;
		
	}
	public Keeper getById(int keeperId) throws ClassNotFoundException, SQLException {
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		String sql = "Select * from keepers where Keepers_Id=?";
		
		PreparedStatement pstmt= conn.prepareStatement(sql);
		pstmt.setInt(1, keeperId);
		
		ResultSet rss = pstmt.executeQuery();
		Keeper keeper=null;
		while (rss.next())
		{
			keeper=new Keeper(rss.getInt("Keepers_Id"),
					rss.getString("Keepers_Rank"),
					rss.getString("Keepers_Name"),
					rss.getDate("Date_of_Birth"));
		
		//add entity object into collection
		}
		
		
		return keeper;
	}
	
	public int updateKeeper(Keeper k) throws ClassNotFoundException, SQLException {
		int result=-1;
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		String sql = "UPDATE `animalmanagementsystem`.`keepers` SET `Keepers_Rank` = ?, `Keepers_Name` = ?, `Date_of_Birth` = ? WHERE (`Keepers_Id` = ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,k.getKeepers_Rank());
		pstmt.setString(2,k.getKeepers_Name());
		pstmt.setDate(3,new java.sql.Date(k.getDate_of_Birth().getTime()));
		pstmt.setInt(4, k.getKeepers_Id());
		
		result = pstmt.executeUpdate();
		System.out.print(result);
		return result;
		
		
	}

}

