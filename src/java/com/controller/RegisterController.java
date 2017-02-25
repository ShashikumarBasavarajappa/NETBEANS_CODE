/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;



import com.dao.RegisterDao;
import com.model.Emp;
import com.model.Register;
import java.util.List;
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
public class RegisterController {   
    @Autowired
    RegisterDao dao1;
    
     @RequestMapping("/Register")  
    public ModelAndView showform(){  
         //command is a reserved request attribute name, now use <form> tag to show object data 
        
        return new ModelAndView("Register","command",new Register());  
    }
    
    	@RequestMapping(value="/Registersave",method = RequestMethod.POST)
	public ModelAndView editsave(@ModelAttribute("register") Register register){
		dao1.save(register);
                //  return new ModelAndView("redirect:/viewemp");
		return new ModelAndView("redirect:/AdminHome");
	}    
        
         @RequestMapping("/AdminHome")  
    public ModelAndView viewemp(){  
     
        List<Register> list=dao1.getEmployees();
        return new ModelAndView("AdminHome","list",list);

        //return new ModelAndView("viewemp","list",list);  
    } 
}
