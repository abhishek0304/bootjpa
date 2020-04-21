package com.example.demo.Model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="employee")
public class Employee 
{
	@Id
	@NotNull
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotNull
	@Size(max=20)
	private String fname;
	
	@NotNull
	@Size(max=20)
	private String lname;
	
	@NotNull
	@Size(max=30)
	private String designation;
	
	@NotNull
	@Email
	@Size(max=40)
	private String email;
	
	@NotNull
	@Size(max=10, message="enter 10 digit number")
	private String mobile;
	
	@NotNull
	@Size(max=30)
	private String pass;
	
	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@OneToOne(fetch = FetchType.LAZY,
            cascade =  CascadeType.ALL,
            mappedBy = "employee")
    private EmployeeLogin employeelogin;

    // Hibernate requires a no-arg constructor
    public Employee() {

    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", fname=" + fname + ", lname=" + lname + ", designation=" + designation
				+ ", email=" + email + ", mobile=" + mobile + ", pass=" + pass + "]";
	}

	

	

	
	
}
