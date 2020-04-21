package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Model.EmployeeLogin;

public interface EmployeeLoginRepo extends JpaRepository<EmployeeLogin, Integer> 
{

}
