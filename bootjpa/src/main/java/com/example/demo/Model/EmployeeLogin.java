package com.example.demo.Model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="employee_login")
public class EmployeeLogin 
{
	@Id
	@NotNull(message = "Id cannot be null")
	private int id;
	
	@NotNull
	private String pass;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	@OneToOne(fetch = FetchType.LAZY, optional = false)
    @PrimaryKeyJoinColumn(name = "id")
    private Employee employee;

    public EmployeeLogin() {

    }

	@Override
	public String toString() {
		return "EmployeeLogin [id=" + id + ", password=" + pass + "]";
	}
}
