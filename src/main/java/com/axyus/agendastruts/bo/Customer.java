/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.axyus.agendastruts.bo;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author farah.gauduin
 */
public class Customer {
    
    private Integer customerId;
    private String lastName;
    private String firstName;
    private String username;
    private String email;
    private Integer phoneNumber;
    private Integer addressId;
    private Address address;

    public Customer() {
    }

    public Customer(Integer customerId, String lastName, String firstName, String username, String email, Integer phoneNumber, Integer addressId) {
        this.customerId = customerId;
        this.lastName = lastName;
        this.firstName = firstName;
        this.username = username;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.addressId = addressId;
    }
    
        public Customer(String lastName, String firstName, String username, String email, Integer phoneNumber) {
        this.customerId = customerId;
        this.lastName = lastName;
        this.firstName = firstName;
        this.username = username;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.addressId = addressId;
    }
    
    

    public Customer(String lastName, String firstName, String username, String email, Integer phoneNumber, Integer addressId) {
        this.lastName = lastName;
        this.firstName = firstName;
        this.username = username;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.addressId = addressId;
    }

    public Customer(ResultSet rs) throws SQLException {
        this.customerId = rs.getInt("customer_id");
        this.lastName = rs.getString("lst_name");
        this.firstName = rs.getString("first_name");
        this.username = rs.getString("username");
        this.email = rs.getString("email");
        this.phoneNumber = rs.getInt("phone_number");
        this.addressId = rs.getInt("address_id");
        this.address = new Address (rs);
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public Integer getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(Integer phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }
    
    

    @Override
    public String toString() {
        return "Customer{" + "customerId=" + customerId + ", lastName=" + lastName + ", firstName=" + firstName + ", username=" + username + ", email=" + email + ", addressId=" + addressId + '}';
    }

}
