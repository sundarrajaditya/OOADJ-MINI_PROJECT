package com.shareapp.spring.service;
import java.sql.*;

import org.springframework.stereotype.Service;

@Service
public class LoginService {

	public boolean validateUser(String username,String password) throws SQLException {
		boolean valid = false;

		// Currently login is hard-coded later on spring security will be added.


		System.out.println(username);
		System.out.println(password);
		String q="select count(*) from register where user_name='"+username+"' and password='"+password+"';";
		Connection connection= Jdbc.JdbcConnect();
		Statement st = connection.createStatement();
		ResultSet rs =st.executeQuery(q);
		int val=0;
		while(rs.next()){
			val=rs.getInt("count(*)");
			System.out.println(val);
		}
		if(val==1) {
			valid=true;

		} else
			valid=false;
		connection.close();
		return valid;
	}
	public int getUsrId(String username) throws SQLException
	{
		String q="select userid from register where user_name='"+username+"';";
		Connection connection= Jdbc.JdbcConnect();
		Statement st = connection.createStatement();
		ResultSet rs =st.executeQuery(q);
		int usr_id = -1;
		while(rs.next())
		{
			usr_id=rs.getInt("userid");
		}
		connection.close();
		return usr_id;
	}
}
