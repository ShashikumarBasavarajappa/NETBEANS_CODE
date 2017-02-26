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
public class Adminsearch {
    
    private String searchkey;

    public Adminsearch() {
    }

    public Adminsearch(String searchkey) {
        this.searchkey = searchkey;
    }

    public String getSearchkey() {
        return searchkey;
    }

    public void setSearchkey(String searchkey) {
        this.searchkey = searchkey;
    }    
}
