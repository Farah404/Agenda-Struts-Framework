/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.axyus.agendastruts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author farah.gauduin
 */
public class AddressForm extends ActionForm {

    private Integer addressId;
    private Integer streetNumber;
    private String streetName;
    private String city;
    private String postalCode;
    private String country;

    public ActionErrors validate(ActionMapping mapping,
            HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (streetName == null || streetName.length() < 1) {
            errors.add("streetName", new ActionMessage("error.streetName.required"));
        }
        
        if (city == null || city.length() < 1) {
            errors.add("city", new ActionMessage("error.city.required"));
        }
        
        if (postalCode == null || postalCode.length() < 1) {
            errors.add("postalCode", new ActionMessage("error.postalCode.required"));
        }
        
        if (country == null || country.length() < 1) {
            errors.add("country", new ActionMessage("error.country.required"));
        }
        return errors;
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public Integer getStreetNumber() {
        return streetNumber;
    }

    public void setStreetNumber(Integer streetNumber) {
        this.streetNumber = streetNumber;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

}
