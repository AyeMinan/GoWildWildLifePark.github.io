package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.DBManager;
import com.csm.Entity.*;

public class EnclosureManager {
	public int insert(Enclosure e) throws ClassNotFoundException, SQLException{
	int row=-1;
	DBManager dbM= new DBManager();
	Connection con=dbM.getConnection();
	
	String sql = "INSERT INTO `animalmanagementsystem`.`enclosure` (`Enclosure_type`, `Location`) VALUES (?, ?)";
			
	PreparedStatement pst = con.prepareStatement(sql);
	
	pst.setString(1, e.getEnclosure_type());
	pst.setString(2, e.getLocation());
	
	row = pst.executeUpdate();

	return row;

}
public ArrayList<Enclosure> fetchAll()throws ClassNotFoundException, SQLException{
	
	ArrayList<Enclosure> enclosure = new ArrayList<Enclosure>();
	Enclosure e;
	//Enclosure e;
	
	//1. get connection
			DBManager dbMgr=new DBManager();
			Connection conn=dbMgr.getConnection();
			
	//2.prepare statement
			
			String sql = "SELECT * FROM enclosure";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			ResultSet rs=pstmt.executeQuery();
			
			
			
			//Resultset => ArrayList
			//column values of Resultset getString("database column name")
			
			//populate the array list from the record of the course table
			while (rs.next())
			{
				e=new Enclosure(rs.getInt("Enclosure_Id"),
						rs.getString("Enclosure_type"),
						rs.getString("Location"));
			
				enclosure.add(e);//add entity object into collection
			}
			
			
			return enclosure;
			
			
			
					
}	public int deleteEnclosure(int enclosureId) throws ClassNotFoundException, SQLException {
	int result=-1;
	DBManager dbMgr=new DBManager();
	Connection conn=dbMgr.getConnection();
	
	String sql = "Delete from enclosure where Enclosure_Id = ?";
	PreparedStatement pstmt=conn.prepareStatement(sql);
	pstmt.setInt(1, enclosureId);
	result = pstmt.executeUpdate();
	return result;
	
}
public Enclosure getById(int enclosureId) throws ClassNotFoundException, SQLException {
	DBManager dbMgr = new DBManager();
	Connection conn = dbMgr.getConnection();
	
	String sql = "Select * from enclosure where Enclosure_Id=?";
	
	PreparedStatement pstmt= conn.prepareStatement(sql);
	pstmt.setInt(1, enclosureId);
	
	ResultSet rss = pstmt.executeQuery();
	Enclosure enclosure=null;
	while (rss.next())
	{
		enclosure=new Enclosure(rss.getInt("Enclosure_Id"),
				rss.getString("Enclosure_type"),
				rss.getString("Location"));
	
	//add entity object into collection
	}
	
	
	return enclosure;
}
public int updateEnclosure(Enclosure e) throws ClassNotFoundException, SQLException {
	int result=-1;
	DBManager dbMgr = new DBManager();
	Connection conn = dbMgr.getConnection();
	
	String sql = "UPDATE `animalmanagementsystem`.`enclosure` SET `Enclosure_type` = ?, `Location` = ? WHERE (`Enclosure_Id` = ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1,e.getEnclosure_type());
	pstmt.setString(2,e.getLocation());
	pstmt.setInt(3, e.getEnclosure_Id());
	
	result = pstmt.executeUpdate();
	System.out.print(result);
	return result;
	
	
}
}


