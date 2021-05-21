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
public class VolDetails {
    
    private String vol_name;
    private String email;
    private String password;
    private String phno;
    private String add;
    private String city;
    private String qual;
    private String about;
    private String sec_ques;
    private String sec_ans;
   
  
    
    public VolDetails(){
        super();
    }
    public VolDetails(String vol_name, String email, String password, String phno, String add, String city, String qual, String about, String sec_ques, String sec_ans){
        super();
        this.vol_name=vol_name;
        this.email=email;
        this.password=password;
        this.phno=phno;
        this.add=add;
        this.city=city;
        this.qual=qual;
        this.about=about;
        this.sec_ques=sec_ques;
        this.sec_ans=sec_ans;
        
       
      
    }

    public String getPhno() {
        return phno;
    }

    public void setPhno(String phno) {
        this.phno = phno;
    }

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getQual() {
        return qual;
    }

    public void setQual(String qual) {
        this.qual = qual;
    }

    public String getAbout() {
        return about;
    }

   

    public void setAbout(String about) {
        this.about = about;
    }
    
    public String getVol_name() {
        return vol_name;
    }

    public void setVol_name(String vol_name) {
        this.vol_name = vol_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSec_ques() {
        return sec_ques;
    }

    public void setSec_ques(String sec_ques) {
        this.sec_ques = sec_ques;
    }

    public String getSec_ans() {
        return sec_ans;
    }

    public void setSec_ans(String sec_ans) {
        this.sec_ans = sec_ans;
    }

 
    
}