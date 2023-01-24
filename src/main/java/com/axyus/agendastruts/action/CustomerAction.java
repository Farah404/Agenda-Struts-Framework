/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.axyus.agendastruts.action;

import com.axyus.agendastruts.bll.AgendaManager;
import com.axyus.agendastruts.bo.Address;
import com.axyus.agendastruts.bo.Customer;
import com.axyus.agendastruts.form.AddressForm;
import com.axyus.agendastruts.form.CustomerForm;
import com.axyus.agendastruts.utils.Utils;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author farah.gauduin
 */
public class CustomerAction extends Action{
    
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession ses = request.getSession(true);
        Utils utils = new Utils();
        utils.initialize();
        
         //address to be affected to the customer
        AddressForm addressForm = (AddressForm) form;
        Integer streetNumber = addressForm.getStreetNumber();
        String streetName = addressForm.getStreetName();
        String city = addressForm.getCity();
        String postalCode = addressForm.getPostalCode();
        String country = addressForm.getCountry();
        Address address = new Address(streetNumber, streetName, city, postalCode, country);
        address.setAddressId(0);
        AgendaManager agendaManager = new AgendaManager();
        agendaManager.createAddress(address);
        //new customer
        CustomerForm customerForm = (CustomerForm) form;
        Integer customerId = 0;
        String lastName = customerForm.getLastName();
        String firstName = customerForm.getFirstName();
        String username = customerForm.getUsername();
        String email = customerForm.getEmail();
        Integer phoneNumber = customerForm.getPhoneNumber();
        Address affectedAddress = agendaManager.getLastAddress();
        Integer addressId = affectedAddress.getAddressId();
        Customer customer = new Customer(lastName, firstName, username, email, phoneNumber, addressId);
        agendaManager.createCustomer(customer);
        
        
        return mapping.findForward("customerSuccess");
    }
    
}
