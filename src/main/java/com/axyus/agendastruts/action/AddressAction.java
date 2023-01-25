/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.axyus.agendastruts.action;

import com.axyus.agendastruts.bo.Address;
import com.axyus.agendastruts.bll.AgendaManager;
import com.axyus.agendastruts.form.AddressForm;
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
public class AddressAction extends DispatchAction {

    Utils utils = new Utils();
    AgendaManager agendaManager = new AgendaManager();

    //Shows the add address page
    public ActionForward addAddress(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException {
        System.out.println("Add Address Page");
        return mapping.findForward("addAddressBis");
    }

    //Saves the added address
    public ActionForward saveAddress(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        AddressForm af = (AddressForm) form;
        //Used form bean class methods to get values of form input elements
        Integer streetNumber = af.getStreetNumber();
        String streetName = af.getStreetName();
        String city = af.getCity();
        String postalCode = af.getPostalCode();
        String country = af.getCountry();
        Integer addressId = 0;
        Address address = new Address(addressId, streetNumber, streetName, city, postalCode, country);
        utils.initialize();
        agendaManager.createAddress(address);
        return new ActionForward("/showaddresses.do", true);
    }

    //Shows the update page
    public ActionForward editAddress(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        System.out.println("Update Address Page");
        utils.initialize();
        Integer addressId = Integer.parseInt(request.getParameter("addressId"));
        Address existingAddress = agendaManager.findAddressbyId(addressId);
        request.setAttribute("existingAddress", existingAddress);
        //Used form bean class methods to fill the form input elements with selected address values
        AddressForm af = (AddressForm) form;
        af.setAddressId((Integer) existingAddress.getAddressId());
        af.setStreetNumber((Integer) existingAddress.getStreetNumber());
        af.setStreetName(existingAddress.getStreetName());
        af.setCity(existingAddress.getCity());
        af.setPostalCode(existingAddress.getPostalCode());
        af.setCountry(existingAddress.getCountry());
        return mapping.findForward("editAddressBis");
    }

    //Saves the updated address in the database
    public ActionForward updateAddress(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        System.out.println("Update Address");
        AddressForm af = (AddressForm) form;
        Integer streetNumber = af.getStreetNumber();
        String streetName = af.getStreetName();
        String city = af.getCity();
        String postalCode = af.getPostalCode();
        String country = af.getCountry();
        Integer addressId = af.getAddressId();
        utils.initialize();
        Address updatedAddress = new Address(addressId, streetNumber, streetName, city, postalCode, country);
        agendaManager.updateAddress(updatedAddress);
        return new ActionForward("/showaddresses.do", true);
    }

    //Delete address from database
    public ActionForward deleteAddress(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        System.out.println("Delete Address");
        int addressId = Integer.parseInt(request.getParameter("addressId"));
        Address existingAddress = agendaManager.findAddressbyId(addressId);
        agendaManager.deleteAddressById(existingAddress.getAddressId());
        return new ActionForward("/showaddresses.do", true);
    }

}
