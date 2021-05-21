/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.User;

/**
 *
 * @author KHUSHBOO R. BALANI
 */
public class ApplyVol {
    
    private VolDetails vol;
    private String Nponame;

    public ApplyVol(VolDetails vol, String Nponame) {
        super();
        this.vol = vol;
        this.Nponame = Nponame;
    }
    
    public ApplyVol(){
        super();
    }

    public VolDetails getVol() {
        return vol;
    }

    public void setVol(VolDetails vol) {
        this.vol = vol;
    }

    public String getNponame() {
        return Nponame;
    }

    public void setNponame(String Nponame) {
        this.Nponame = Nponame;
    }
    
    
    
}
