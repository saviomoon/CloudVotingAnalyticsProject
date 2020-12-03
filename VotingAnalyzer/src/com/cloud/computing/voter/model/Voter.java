package com.cloud.computing.voter.model;

public class Voter {
	
	private Integer id;
	
	private String firstName;
	
	private String lastName;
	
	private int age;
	
	private String sex;

	private String state;
	
	private String profession;
	
	private String ethnicity;
	
	private String selection;

	public Voter(Integer id, String firstName, String lastName, int age, String sex, String state, String profession,
			String ethnicity, String selection) {
		this(firstName, lastName, age, sex, state, profession, ethnicity, selection);
		this.id = id;
	}
	
	public Voter(String firstName, String lastName, int age, String sex, String state, String profession,
			String ethnicity, String selection) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
		this.sex =sex;
		this.state = state;
		this.profession = profession;
		this.ethnicity = ethnicity;
		this.selection = selection;
	}
	
	public Voter()
	{
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getEthnicity() {
		return ethnicity;
	}

	public void setEthnicity(String ethnicity) {
		this.ethnicity = ethnicity;
	}

	public String getSelection() {
		return selection;
	}

	public void setSelection(String selection) {
		this.selection = selection;
	}

	@Override
	public String toString() {
		return "Voter [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", age=" + age + ", sex="
				+ sex + ", state=" + state + ", profession=" + profession + ", ethnicity=" + ethnicity + ", selection="
				+ selection + "]";
	}

		

}
