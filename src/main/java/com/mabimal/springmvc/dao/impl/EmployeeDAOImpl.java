package com.mabimal.springmvc.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mabimal.springmvc.dao.EmployeeDAO;
import com.mabimal.springmvc.entity.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public long createEmployee(Employee employee) {
		Serializable id = sessionFactory.getCurrentSession().save(employee);
		return (Long) id;
	}

	public Employee updateEmployee(Employee employee) {
		sessionFactory.getCurrentSession().update(employee);
		return employee;
	}

	public void deleteEmployee(long id) {
		Employee employee = new Employee();
		employee.setId(id);
		sessionFactory.getCurrentSession().delete(employee);
	}

	public List<Employee> getAllEmployees() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("SELECT e FROM Employee e");
		System.out.println(query.list());
		return query.list();
	}

	public Employee getEmployee(long id) {
		return (Employee) sessionFactory.getCurrentSession().get(Employee.class, id);
	}

}
