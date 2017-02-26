/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.dao.AdminsearchDao;
import com.dao.RegisterDao;
import com.model.Adminsearch;
import com.model.Emp;
import com.model.Register;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author insbasavar
 */
@Controller
public class AdminsearchController {
    
    @Autowired
    RegisterDao dao1;
    
      @RequestMapping(value="/Adminsearch",method = RequestMethod.GET)  
    public ModelAndView search(@ModelAttribute("Register") Register register){  
        //write code to save emp object  
        //here, we are displaying emp object to prove emp has data  
        //System.out.println(adminsearch);
       List<Register> searchresult = dao1.search(register);
       
        //dao2.search(emp);
        //return new ModelAndView("empform","command",emp);//will display object data  
        return new ModelAndView("AdminHome","searchresult",searchresult);//will redirect to viewemp request mapping  
    } 
    
        @RequestMapping("/Adminview")  
    public ModelAndView viewemp(){  
      
        return new ModelAndView("viewemp");
    } 
    //profile
    @RequestMapping(value="/profile/{id}")
	public ModelAndView profile(@PathVariable int id){
		Register profile=dao1.getEmpById(id);
		return new ModelAndView("profile","profile",profile);
	}
}
