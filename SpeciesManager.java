package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.DBManager;
import com.csm.Entity.Species;

public class SpeciesManager {
	public int insert(Species s) throws ClassNotFoundException, SQLException{
	int row=-1;
	DBManager dbM= new DBManager();
	Connection con=dbM.getConnection();
	
	String sql = "INSERT INTO `animalmanagementsystem`.`species` (`Species_Gp`, `Life_style`, `Conversational_status`, `Species_type`) VALUES (?,?,?,?)";
			
	PreparedStatement pst = con.prepareStatement(sql);
	
	pst.setString(1, s.getSpecies_Gp());
	pst.setString(2, s.getLife_style());
	pst.setString(3, s.getConversational_status());
	pst.setString(4, s.getSpecies_type());
	
	row = pst.executeUpdate();

	return row;

}
	public ArrayList<Species> fetchAll()throws ClassNotFoundException, SQLException{
		
		ArrayList<Species> species = new ArrayList<Species>();
		Species s;
				DBManager dbMgr=new DBManager();
				Connection conn=dbMgr.getConnection();
				
				String sql = "SELECT * FROM species";
				PreparedStatement pstmt=conn.prepareStatement(sql);
				ResultSet rs=pstmt.executeQuery();
				
				while (rs.next())
				{
					s=new Species(rs.getInt("Species_Id"),
							rs.getString("Species_Gp"),
							rs.getString("Life_style"),
							rs.getString("Conversational_status"),
							rs.getString("Species_type"));
					
							
					species.add(s);//add entity object into collection
				}return species;
				
				
	}
						
	
    public int deleteSpecies(int speciesId) throws ClassNotFoundException, SQLException{
	int result=-1;
	DBManager dbMgr= new DBManager();
	Connection con = dbMgr.getConnection();
	
	String sql = "Delete from species where Species_Id=?";
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setInt(1, speciesId);
	result = pst.executeUpdate();
	return result;
	
}
	public Species getById(int speciesId) throws ClassNotFoundException, SQLException {
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		String sql = "Select * from species where Species_Id=?";
		
		PreparedStatement pstmt= conn.prepareStatement(sql);
		pstmt.setInt(1, speciesId);
		
		ResultSet rss = pstmt.executeQuery();
		Species species=null;
		while (rss.next())
		{
			species=new Species(rss.getInt("Species_Id"),
					rss.getString("Species_Gp"),
					rss.getString("Life_style"),
					rss.getString("Conversational_status"),
					rss.getString("Species_type"));
		
		//add entity object into collection
		}
		
		
		return species;
	}
	
	public int updateSpecies(Species s) throws ClassNotFoundException, SQLException {
		int result=-1;
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		String sql = "UPDATE `animalmanagementsystem`.`species` SET `Species_Gp` = ?, `Life_style` = ?, `Conversational_status` = ?, `Species_type` = ? WHERE (`Species_Id` = ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,s.getSpecies_Gp());
		pstmt.setString(2,s.getLife_style());
		pstmt.setString(3,s.getConversational_status());
		pstmt.setString(4, s.getSpecies_type());
		pstmt.setInt(5, s.getSpecies_Id());
		
		result = pstmt.executeUpdate();
		System.out.print(result);
		return result;
		
		
	}


}
