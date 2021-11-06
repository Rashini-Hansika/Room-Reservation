package Reservation;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ReservationDBUtil {
	
	public static boolean isTrue;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;
	
	public static List<Reservation> validate (String userName, String email){
		ArrayList<Reservation> reserve = new ArrayList<>();
		
		//database connection
		
		
		//validate
		try {
			con = DBConnect.getConnection();
			stat = con.createStatement();
			
			String sql = "select * from reservation where userName='"+userName+"' and email='"+email+"'";
			rs = stat.executeQuery(sql);
			
			if(rs.next()) {
				 int id = rs.getInt(1);
				 String username = rs.getString(2);
				 String eMail = rs.getString(3);
				 String indate = rs.getString(4);
				 String outDate = rs.getString(5);
				 String room = rs.getString(6);
				 String space =  rs.getString(7);
				 String guest = rs.getString(8);
				 String adult = rs.getString(9);
				 String children = rs.getString(10);
				 String beds = rs.getString(11);
				 
				 Reservation r = new Reservation(id,username,eMail,indate,outDate,room,space,guest,adult,children,beds);
				 reserve.add(r);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return reserve;
	}
	
	

	
	public static boolean insertReservation(String userName,String email,String inDate, String outDate,String room, String space, String guest, String adult, String children,String beds ) {
		boolean isTrue = false;
		
		//database connection
		
		
		try {
			con = DBConnect.getConnection();
			stat = con.createStatement();
			
			String sql = "insert into reservation values (0,'"+userName+"','"+email+"','"+inDate+"','"+outDate+"','"+room+"','"+space+"','"+guest+"','"+adult+"','"+children+"','"+beds+"')";
			int res = stat.executeUpdate(sql);
			
			
			
			if(res>0) {
				isTrue = true;
			}else {
				isTrue = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isTrue;
	}
	
	public static boolean updateReservation(String userName, String email, String inDate, String outDate, String room, String space, String guest, String adult, String children, String beds) {
		
		
		try {
			con = DBConnect.getConnection();
			stat = con.createStatement();
			
			String sql = "update reservation set userName='"+userName+"',email='"+email+"', inDate = '"+inDate+"' ,  outDate='"+outDate+"' , room='"+room+"' , space='"+space+"' , guest='"+guest+"' , adult='"+adult+"' , children='"+children+"' , beds='"+beds+"'" + "where userName='"+userName+"'";
			
			int res = stat.executeUpdate(sql);
			
			if(res > 0) {
				isTrue = true;
			}else {
				isTrue = false;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isTrue;
	}
		
	
	public static List<Reservation> getReservationDetails(String userName){
		
		ArrayList<Reservation> res = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "select * from reservation where userName = '"+userName+"'";
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String username = rs.getString(2);
				String eMail = rs.getString(3);
				String indate = rs.getString(4);
				String outdate = rs.getString(5);
				String room = rs.getString(6);
				String space = rs.getString(7);
				String guest = rs.getString(8);
				String adult = rs.getString(9);
				String children = rs.getString(10);
				String beds = rs.getString(11);
				
				Reservation r = new Reservation(id,username, eMail, indate, outdate, room, space,guest, adult, children,beds);
				res.add(r);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	
	public static boolean deleteReservation(String userName) {
		
		try {
			con = DBConnect.getConnection();
			stat = con.createStatement();
			String sql = "delete from reservation where userName ='"+userName+"'";
			int r = stat.executeUpdate(sql);
			
			if(r > 0) {
				isTrue = true;
			}
			else {
				isTrue = false;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isTrue;
	}
	
		
		
}

