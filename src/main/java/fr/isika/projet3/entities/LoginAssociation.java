package fr.isika.projet3.entities;


public class LoginAssociation {
	
	
	private int password;
	private String email;
	private boolean isAuthentified;
	
	
	public int getPassword() {
		return password;
	}
	public void setPassword(int password) {
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
