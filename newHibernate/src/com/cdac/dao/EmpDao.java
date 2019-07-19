package com.cdac.dao;

import java.util.List;

import com.cdac.entity.Employee;

public interface EmpDao {
     int insert(Employee e);
     void delete(int empno);
     void update(Employee e);
     List<Employee> showAll();
     Employee getEmployee(int id);
}
