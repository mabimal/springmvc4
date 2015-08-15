package com.mabimal.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mabimal.springmvc.dao.EmployeeDAO;
import com.mabimal.springmvc.entity.Employee;
import com.mabimal.springmvc.service.EmployeeService;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeDAO employeeDAO;

	public long createEmployee(Employee employee) {
		return employeeDAO.createEmployee(employee);
	}

	public Employee updateEmployee(Employee employee) {
		return employeeDAO.updateEmployee(employee);
	}

	public void deleteEmployee(long id) {
		employeeDAO.deleteEmployee(id);
	}

	public List<Employee> getAllEmployees() {
		return employeeDAO.getAllEmployees();
	}

	public Employee getEmployee(long id) {
		return employeeDAO.getEmployee(id);
	}
}
