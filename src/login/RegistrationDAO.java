package login;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connection.ConnectionFactory;


public class RegistrationDAO {
	Connection connection = null;
	PreparedStatement pst = null;
	ResultSet rs = null;

	public RegistrationDAO() {
	}

	private Connection getConnection() throws SQLException {
		java.sql.Connection con;
		con = ConnectionFactory.getInstance().getConnection();
		return con;
	}

	public int registration(UserRegistrationModel regModel) {
		int i = 0;
		try {
			String queryString = "insert into " +"s_db(name,username,password) " + "values(?,?,?)";
			connection = getConnection();
			pst = connection.prepareStatement(queryString);
			pst.setString(1, regModel.getName());
			pst.setString(2, regModel.getUsername());
			pst.setString(3, regModel.getPassword());
			i = pst.executeUpdate();
			System.out.println("Result : " + i);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	public boolean studentLogin(LoginModel loginModel) {
		boolean b = false;
		try {
			String query = "select username,password from s_db  where username=? and password=?";
			connection = getConnection();
			pst = connection.prepareStatement(query);
			pst.setString(1, loginModel.getUsername());
			pst.setString(2, loginModel.getPassword());
			rs = pst.executeQuery();
			if (rs.next()) {
				b = true;
			}
			System.out.println("Result : " + b);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
}
