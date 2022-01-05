/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhan.di.springmvc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

/**
 *
 * @author Madhankumar Selvaraj
 */
public class EmployeeDao {

private static EmployeeDao employeeDao=null;
private JdbcTemplate jdbcTemplate;

public EmployeeDao() {
    jdbcTemplate = new JdbcTemplate();
    employeeDao = this;
}

public JdbcTemplate getJdbcTemplate() {
    return jdbcTemplate;
}

public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
    this.jdbcTemplate = jdbcTemplate;
}

public static EmployeeDao getInstance() {
    if (employeeDao == null) {
        employeeDao = new EmployeeDao();
    }
    return employeeDao;
}

public List<Employee> getAllEmployee() {
    System.out.println("getAllEmployee");
    return jdbcTemplate.query("select * from employee", new ResultSetExtractor<List<Employee>>() {
    @Override
    public List<Employee> extractData(ResultSet rs) throws SQLException,
            DataAccessException {
        List<Employee> list = new ArrayList<Employee>();
        while (rs.next()) {
            Employee e = new Employee();
            e.setId(rs.getInt(1));
            e.setName(rs.getString(2));
            e.setSalary(rs.getInt(3));
            list.add(e);
        }
        return list;
    }
    });
}
}
