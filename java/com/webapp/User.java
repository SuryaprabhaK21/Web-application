package com.webapp;

public class User {
	private int id;
	private String username;
	private String userEmailID;
	private String userMobileNumber;
	private String userPassword;
	private String userConfirmPassword;
	private String userAddress;
	private String userLandmark;
	private String userCity;
	private String userState;
	private String userPincode;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getId() 
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username) 
	{
		this.username = username;
	}
	public String getUserEmailID() 
	{
		return userEmailID;
	}
	public void setUserEmailID(String userEmailID) 
	{
		this.userEmailID = userEmailID;
	}
	public String getUserMobileNumber() 
	{
		return userMobileNumber;
	}
	public void setUserMobileNumber(String userMobileNumber) 
	{
		this.userMobileNumber = userMobileNumber;
	}
	public String getUserPassword() 
	{
		return userPassword;
	}
	public void setUserPassword(String userPassword) 
	{
		this.userPassword = userPassword;
	}
	public String getUserConfirmPassword()
	{
		return userConfirmPassword;
	}
	public void setUserConfirmPassword(String userConfirmPassword) 
	{
		this.userConfirmPassword = userConfirmPassword;
	}
	public String getUserAddress()
	{
		return userAddress;
	}
	public void setUserAddress(String userAddress) 
	{
		this.userAddress = userAddress;
	}
	public String getUserLandmark() 
	{
		return userLandmark;
	}
	public void setUserLandmark(String userLandmark)
	{
		this.userLandmark = userLandmark;
	}
	public String getUserCity()
	{
		return userCity;
	}
	public void setUserCity(String userCity)
	{
		this.userCity = userCity;
	}
	public String getUserState() 
	{
		return userState;
	}
	public void setUserState(String userState)
	{
		this.userState = userState;
	}
	public String getUserPincode()
	{
		return userPincode;
	}
	public void setUserPincode(String userPincode)
	{
		this.userPincode = userPincode;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", userEmailID=" + userEmailID + ", userMobileNumber="
				+ userMobileNumber + ", userPassword=" + userPassword + ", userConfirmPassword=" + userConfirmPassword
				+ ", userAddress=" + userAddress + ", userLandmark=" + userLandmark + ", userCity=" + userCity
				+ ", userState=" + userState + ", userPincode=" + userPincode + "]";
	}

	
	
	
	
	
}
