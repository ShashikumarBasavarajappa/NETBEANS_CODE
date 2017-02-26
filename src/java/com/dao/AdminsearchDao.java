/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Adminsearch;
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
public class AdminsearchDao {
 
        JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
 
    }

    
    public  List<Adminsearch> search(Adminsearch aa){
            //String sql="select * from AdminRegister where email="aa.getSearchkey()"";
        //System.out.println("dddddd" +  aa.getSearchkey());
        //       return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Adminsearch>(Adminsearch.class));
            String sql = "select email from AdminRegister where email=?";
            //return template.qu
            //return template.queryForMap(sql, aa.getSearchkey());
            //return template()
           
          //  Adminsearch ast = (Adminsearch)template.queryForObject (sql, new Object[]{aa.getSearchkey()}, new BeanPropertyRowMapper<Adminsearch>(Adminsearch.class));
          //System.out.println(ast);  
             return template.query("select * from AdminRegister where firstname=?",new Object[]{aa.getSearchkey()},new RowMapper<Adminsearch>(){
                    public Adminsearch mapRow(ResultSet rs, int row) throws SQLException {
                            Adminsearch e=new Adminsearch();
                            e.setSearchkey(rs.getString(2));
                            return e;
                    }

            });
   
           // return ast;
          //  return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Emp>(Emp.class));
    }
    
} 
