/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

/**
 *
 * @author insbasavar
 */
public class Emp {

    private int id;
    private  float salary;
    private String name;
    private String designation;
    
    public Emp() {
    }

    public Emp(int id, float salary, String name, String designation){
        this.id=id;
        this.name=name;
        this.salary = salary;
        this.designation = designation;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }

    
    public String getDesignation() {
        return designation;
    }
 
    public void setDesignations(String designation) {
        this.designation = designation;
    }
    
    
    
}
