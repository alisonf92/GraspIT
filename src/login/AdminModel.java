package login;


import java.io.Serializable;
import java.io.Serializable;

public class AdminModel implements
Serializable{
	private String username;
	private String password;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String admin) {
		this.username = admin;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}

