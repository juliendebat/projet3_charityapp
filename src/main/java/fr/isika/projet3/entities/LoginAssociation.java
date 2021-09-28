package fr.isika.projet3.entities;


public class LoginAssociation {
	
	
	private String password;
	private String email;
	private boolean isAuthentified;
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isAuthentified() {
		return isAuthentified;
	}
	public void setAuthentified(boolean isAuthentified) {
		this.isAuthentified = isAuthentified;
	}

	
	
	
}
