/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.axyus.agendastruts.action;

import com.axyus.agendastruts.bll.AgendaManager;
import com.axyus.agendastruts.bo.Address;
import com.axyus.agendastruts.utils.Utils;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.Action;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author farah.gauduin
 */
public class ShowAddresses extends Action {

    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException {
        System.out.println("Show Addresses List");
        Utils utils = new Utils();
        utils.initialize();
        AgendaManager agendaManager = new AgendaManager();
        List<Address> addressesList = agendaManager.getAllAddresses();
        request.setAttribute("addressesList", addressesList);
        return mapping.findForward("success");
    }

}
