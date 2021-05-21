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
public class NPODetails {
    
    private String npo_name;
    private String city;
    private String email;
    private String password;
    private String regno;
    private String add;
    private String des;
    private String website;
    private String vol_work;
    private String certi;
    private String phone;
    private String sec_ques;
    private String sec_ans;

   
    
    public NPODetails(){
        super();
    }
    public NPODetails(String npo_name, String city, String email, String password, String regno, String add, String des, String website, String vol_work, String certi, String phone, String sec_ques, String sec_ans ){
        super();
        this.npo_name=npo_name;
        this.city=city;
        this.email=email;
        this.password=password;
        this.regno=regno;
        this.add=add;
        this.des=des;
        this.website=website;
        this.vol_work=vol_work;
        this.certi=certi;
        this.phone=phone;
        this.sec_ques=sec_ques;
        this.sec_ans=sec_ans;
    }

    public String getAdd() {
        return add;
    }

    public void setAdd(String add) {
        this.add = add;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getVol_work() {
        return vol_work;
    }

    public void setVol_work(String vol_work) {
        this.vol_work = vol_work;
    }

    public String getCerti() {
        return certi;
    }

    public void setCerti(String certi) {
        this.certi = certi;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNpo_name() {
        return npo_name;
    }

    public void setNpo_name(String npo_name) {
        this.npo_name = npo_name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
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

    public String getRegno() {
        return regno;
    }

    public void setRegno(String regno) {
        this.regno = regno;
    }
    
   
}
