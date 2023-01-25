<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <body>
        <p><b>Struts Example - Simple Agenda App</b></p>
        <b>Add Address</b>
    <html:form>
        <table style="background-color:#82CAFA;">
            <tr>
                <td>Street Number</td>
                <td><html:text property="streetNumber" value=""/></td>
            </tr>
            <tr>
                <td>Street Name</td>
                <td><html:text property="streetName" value=""/></td>
            </tr>
            <tr>
                <td>City</td>
                <td><html:text property="city" value=""/></td>
            </tr>
            <tr>
                <td>Postal Code</td>
                <td><html:text property="postalCode" value=""/></td>
            </tr>
            <tr>
                <td>Country</td>
                <td><html:text property="country" value=""/></td>
            </tr>
        </table>
    </p>
    <p>
    <table><tr>
            <td><input type="submit" name="actionMethod" value="saveAddress" /></td>
        </tr></table>
</html:form>
</p>
</body>
</html>