/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.axyus.agendastruts.action;

import com.axyus.agendastruts.bo.Address;
import com.axyus.agendastruts.bll.AgendaManager;
import com.axyus.agendastruts.form.AddressForm;
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
public class AddressAction extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession ses = request.getSession(true);
        AddressForm addressForm = (AddressForm) form;
        Integer streetNumber = addressForm.getStreetNumber();
        String streetName = addressForm.getStreetName();
        String city = addressForm.getCity();
        String postalCode = addressForm.getPostalCode();
        String country = addressForm.getCountry();
        Integer addressId = 0;
        Address address = new Address(addressId, streetNumber, streetName, city, postalCode, country);
        Utils utils = new Utils();
        utils.initialize();
        AgendaManager agendaManager = new AgendaManager();
        agendaManager.createAddress(address);
        ses.setAttribute("streetNumber", streetNumber);
        ses.setAttribute("streetName", streetName);
        ses.setAttribute("city", city);
        ses.setAttribute("postalCode", postalCode);
        ses.setAttribute("country", country);

        if (streetNumber.equals("") || streetName.equals("") || city.equals("")
                || postalCode.equals("") || country.equals("")) {
            return mapping.findForward("error");
        }
        return mapping.findForward("addressSuccess");

    }

}
