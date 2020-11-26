import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserLog {
	public static boolean validate(User user) throws ClassNotFoundException{
		boolean status = false;
		 Class.forName("com.mysql.jdbc.Driver");
		try { Connection conn;
		conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/members", "root", "root");
		
		
		
		PreparedStatement logUser = conn.prepareStatement("select * from registrationtable where username =? and password =?;");
		logUser.setString(1, user.getUsername());
		logUser.setString(2, user.getPassword());
		
		ResultSet rs = logUser.executeQuery();
		status=rs.next();
		
		
		} catch (SQLException e) {
		
		System.out.println("Error, please try again");
		
	}
		
		return status;
		
	}

	
    
}

