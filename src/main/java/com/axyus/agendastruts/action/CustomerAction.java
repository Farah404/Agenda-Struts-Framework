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
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

/**
 *
 * @author farah.gauduin
 */
public class CustomerAction extends DispatchAction {
    
    Utils utils = new Utils();
    AgendaManager agendaManager = new AgendaManager();

    //Shows the add customer page
    public ActionForward addCustomer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException {
        System.out.println("Add Customer Page");
        return mapping.findForward("addCustomerBis");
    }

    //Saves the added customer
    public ActionForward saveCustomer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        utils.initialize();
        
        CustomerForm cf = (CustomerForm) form;

        //address to be affected to customer
        Integer streetNumber = cf.getAddress().getStreetNumber();
        String streetName = cf.getAddress().getStreetName();
        String city = cf.getAddress().getCity();
        String postalCode = cf.getAddress().getPostalCode();
        String country = cf.getAddress().getCountry();
        Address address = new Address(streetNumber, streetName, city, postalCode, country);
        address.setAddressId(0);
        agendaManager.createAddress(address);

        //create customer
        Integer customerId = 0;
        String lastName = cf.getLastName();
        String firstName = cf.getFirstName();
        String username = cf.getUsername();
        String email = cf.getEmail();
        Integer phoneNumber = cf.getPhoneNumber();
        Address affectedAddress = agendaManager.getLastAddress();
        Integer addressId = affectedAddress.getAddressId();
        Customer customer = new Customer(lastName, firstName, username, email, phoneNumber, addressId);
        
        return new ActionForward("/showcustomers.do", true);
    }

    //Shows the update page
    public ActionForward editCustomer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        System.out.println("Update Customer Page");
        utils.initialize();
        Integer customerId = Integer.parseInt(request.getParameter("customerId"));
        Customer existingCustomer = agendaManager.findCustomerbyId(customerId);
        Address existingaddress = agendaManager.findAddressbyId(existingCustomer.getAddressId());
        request.setAttribute("existingAddress", existingCustomer);

        //Used form bean class methods to fill the form input elements with selected address values
        CustomerForm cf = (CustomerForm) form;
        cf.setCustomerId((Integer) existingCustomer.getCustomerId());
        cf.setLastName(existingCustomer.getLastName());
        cf.setFirstName(existingCustomer.getFirstName());
        cf.setUsername(existingCustomer.getUsername());
        cf.setEmail(existingCustomer.getEmail());
        cf.setPhoneNumber(existingCustomer.getPhoneNumber());
        cf.setAddress(existingaddress);
        return mapping.findForward("editCustomerBis");
    }
    
        //Saves the updated customer in the database
    public ActionForward updateCustomer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        System.out.println("Update Customer");
        CustomerForm cf = (CustomerForm) form;
        String lasName = cf.getLastName();
        String firstName = cf.getFirstName();
        String username = cf.getUsername();
        String email = cf.getEmail();
        Integer phoneNumber = cf.getPhoneNumber();
        Integer streetNumber = cf.getAddress().getStreetNumber();
        String streetName = cf.getAddress().getStreetName();
        String city = cf.getAddress().getCity();
        String postalCode = cf.getAddress().getPostalCode();
        String country = cf.getAddress().getCountry();
        Integer addressId = cf.getAddress().getAddressId();
        utils.initialize();
        Customer updatedcustomer = new Customer(lasName, firstName, username, email, phoneNumber);
        Address updatedAddress = new Address(addressId, streetNumber, streetName, city, postalCode, country);
        agendaManager.updateAddress(updatedAddress);
        agendaManager.updateCustomer(updatedcustomer);
        return new ActionForward("/showcustomers.do", true);
    }
    
        //Delete customer from database
    public ActionForward deleteCustomer(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        System.out.println("Delete Address");
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        Customer existinCustomer = agendaManager.findCustomerbyId(customerId);
        agendaManager.deleteById(existinCustomer.getAddressId());
        return new ActionForward("/showcustomers.do", true);
    }
}
