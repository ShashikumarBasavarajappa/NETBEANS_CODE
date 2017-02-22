/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Register;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
/**
 *
 * @author insbasavar
 */
public class RegisterDao {
    
       JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }
    public int save(Register r){
	String sql="insert into AdminRegister(firstname,email,password) values('"+r.getFirstname()+"','"+r.getEmail()+"','"+r.getPassword()+"')";
	return template.update(sql);
}
        public List<Register> getEmployees(){
            return template.query("select * from AdminRegister",new RowMapper<Register>(){
                    public Register mapRow(ResultSet rs, int row) throws SQLException {
                            Register e=new Register();
                            return e;
                    }
            });
    }
    
}
