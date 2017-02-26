/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Login;
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
    public Register login(String username,String password){
            System.out.println("username " + username + "password " + password);
            String sql="select * from AdminRegister where email=? and password=?";
           Register userlist = template.queryForObject(sql, new Object[]{username,password},new BeanPropertyRowMapper<Register>(Register.class));
           
           return userlist;
    }
    
     public Register getEmpById(int id){
            String sql="select * from AdminRegister where id=?";
            return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Register>(Register.class));
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
        
   
    public  List<Register> search(Register aa){
            //String sql="select * from AdminRegister where email="aa.getSearchkey()"";
        //System.out.println("dddddd" +  aa.getSearchkey());
        //       return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Adminsearch>(Adminsearch.class));
            String sql = "select email from AdminRegister where email=?";
            //return template.qu
            //return template.queryForMap(sql, aa.getSearchkey());
            //return template()
           
          //  Adminsearch ast = (Adminsearch)template.queryForObject (sql, new Object[]{aa.getSearchkey()}, new BeanPropertyRowMapper<Adminsearch>(Adminsearch.class));
          //System.out.println(ast);  
             return template.query("select * from AdminRegister where firstname=?",new Object[]{aa.getFirstname()},new RowMapper<Register>(){
                    public Register mapRow(ResultSet rs, int row) throws SQLException {
                            Register e=new Register();
                            //e.setId(row);
                            e.setId(rs.getInt(1));
                            e.setFirstname(rs.getString(2));
                            e.setEmail(rs.getString(3));
                            e.setPassword(rs.getString(4));
                            return e;
                    }
                    
                    
                    

            });
    }

    
}
