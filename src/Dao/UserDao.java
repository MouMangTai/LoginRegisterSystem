package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.User;

public class UserDao {
	public UserDao(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getConnection() throws SQLException{
	
		return DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/loginregistersystem"
				+ "?characterEncoding=UTF-8","root","admin");
		
	}
	public User getUser(String mail,String password){
		User u = null;
		String sql = "select * from users where mail = ? and password = ?";
		try(Connection c = getConnection();PreparedStatement s = c.prepareStatement(sql)){
			s.setString(1, mail);
			s.setString(2, password);
			ResultSet rs = s.executeQuery();
			while(rs.next()){
				u = new User();
				u.setMail(rs.getString(1));
				u.setPassword(rs.getString(2));
				u.setName(rs.getString(3));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}
	public User getUser(String mail){
		User u = null;
		String sql = "select * from users where mail =?";
		try(Connection c = getConnection();PreparedStatement s = c.prepareStatement(sql)){
			s.setString(1, mail);
			ResultSet rs = s.executeQuery();
			while(rs.next()){
				u = new User();
				u.setMail(rs.getString(1));
				u.setPassword(rs.getString(2));
				u.setName(rs.getString(3));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}
	public void addUser(String mail,String password,String name){
		String sql = "insert into users values(?,?,?)";
		try(Connection c = getConnection();PreparedStatement s = c.prepareStatement(sql)){
			s.setString(1, mail);
			s.setString(2, password);
			s.setString(3, name);
			s.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
