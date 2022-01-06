/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhan.di.springmvc;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 *
 * @author Madhankumar Selvaraj
 */
public class AppServletContextListener implements ServletContextListener {

private ServletContext context = null;

public void contextInitialized(ServletContextEvent sce) {
    this.context = sce.getServletContext();
    ApplicationContext apCnxt = new ClassPathXmlApplicationContext("applicationContext.xml");
    EmployeeDao empDao = (EmployeeDao) apCnxt.getBean("edao");
}

public void contextDestroyed(ServletContextEvent sce) {
    throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
}

}