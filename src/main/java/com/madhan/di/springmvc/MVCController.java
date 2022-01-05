/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.madhan.di.springmvc;

/**
 *
 * @author Madhankumar Selvaraj
 */
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MVCController {

@RequestMapping("/login")
public String hello() {
    return "viewpage";
}

@RequestMapping(value = "/login", method = RequestMethod.POST)
public String loginController(@RequestParam(value = "username", required = true) String username, @RequestParam(value = "password", required = true) String password, HttpServletRequest request) {
    System.out.println("" + username);
    System.out.println("" + password);
    if (username.equals("admin") && password.equals("admin@123")) {
        return "loginsuccess";
    } else {
        return "loginfailed";
    }
}

@RequestMapping("/datapage")
public ModelAndView helloagain() {
    ModelAndView modelAndView = new ModelAndView();
    System.out.println("Call hell again method");
    EmployeeDao object = EmployeeDao.getInstance();
    List<Employee> ls = object.getAllEmployee();
    JSONArray jsAry = new JSONArray();
    for (Employee ee : ls) {
        JSONObject jsObj = new JSONObject();
        jsObj.put("id", ee.getId());
        jsObj.put("name", ee.getName());
        jsObj.put("salary", ee.getSalary());
        jsAry.add(jsObj);
    }
    modelAndView.setViewName("final");
    modelAndView.addObject("employeeData", jsAry);
    System.out.println("jsAry : " + jsAry);
    return modelAndView;
}
}
