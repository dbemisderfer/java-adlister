package com.codeup.adlister.dao;

class Config {
    private String url = "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false";
    private String user = "madlister";
    private String password = "madlister";


    public String getUrl() {
        return this.url;
    }

    public String getUsername() {
        return this.user;
    }

    public String getPassword() {
        return this.password;
    }
}