package com.mabimal.springmvc.service;

import java.util.List;

import com.mabimal.springmvc.entity.Employee;

public interface EmployeeService {

	public long createEmployee(Employee employee);

	public Employee updateEmployee(Employee employee);

	public void deleteEmployee(long id);

	public List<Employee> getAllEmployees();

	public Employee getEmployee(long id);
}
