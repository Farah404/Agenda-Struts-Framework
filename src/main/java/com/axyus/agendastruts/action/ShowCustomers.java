/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.axyus.agendastruts.action;

import com.axyus.agendastruts.bll.AgendaManager;
import com.axyus.agendastruts.bo.Customer;
import com.axyus.agendastruts.utils.Utils;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author farah.gauduin
 */
public class ShowCustomers extends Action {
    
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws IOException, SQLException {
        System.out.println("Show Customers List");
        Utils utils = new Utils();
        utils.initialize();
        AgendaManager agendaManager = new AgendaManager();
        List<Customer> customerslist = agendaManager.getAlldata();
        request.setAttribute("customerslist", customerslist);
        return mapping.findForward("success");
    }

    
}
