
import java.sql.*;
import java.sql.DriverManager;


public class UserReg {
	public int registerUser(User user) throws ClassNotFoundException {
		
		String INSERT_USERS_SQL ="INSERT into registrationtable" + "(username, password)" + "VALUES(?, ?);";
	
		int rowsUpdated =0;
		Class.forName("com.mysql.jdbc.Driver");
		try { Connection conn;
		conn = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/members", "root", "root");
		
		
		
		PreparedStatement createUser = conn.prepareStatement(INSERT_USERS_SQL);
		createUser.setInt(1, 1);
		createUser.setString(1, user.getUsername());
		createUser.setString(2, user.getPassword());
		System.out.println(createUser);
		
		rowsUpdated= createUser.executeUpdate();
		createUser.close();
		
		
		} catch (SQLException e) {
		
		System.out.println("Error, please try again");
		
	}
		
		return rowsUpdated;
		
	}

    
}



