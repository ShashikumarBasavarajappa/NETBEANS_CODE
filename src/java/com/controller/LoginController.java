/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.dao.EmpDao;
import com.dao.RegisterDao;
import com.model.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author insbasavar
 */
@Controller
public class LoginController {
    
         @Autowired
         RegisterDao dao1;
         
         @RequestMapping(value="/login",method = RequestMethod.POST)
         public ModelAndView login(@ModelAttribute("login") Login login){ 
            // Login login=dao1.getEmpById(username,password);
	     //return new ModelAndView("empeditform","command",emp);
             return new ModelAndView("redirect:/AdminHome");
         }
        
}
