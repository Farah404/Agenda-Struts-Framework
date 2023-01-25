<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <body>
        <p><b>Struts Example - Simple Agenda App</b></p>
        <b>Update Address</b>
    <html:form>
        <table style="background-color:#82CAFA;">
            <tr>
                <td>Address ID</td>
                <td><html:text property="addressId" disabled="true"/></td>
            </tr>
            <tr>
                <td>Street Number</td>
                <td><html:text property="streetNumber"/></td>
            </tr>
            <tr>
                <td>Street Name</td>
                <td><html:text property="streetName"/></td>
            </tr>
            <tr>
                <td>City</td>
                <td><html:text property="city"/></td>
            </tr>
            <tr>
                <td>Postal Code</td>
                <td><html:text property="postalCode"/></td>
            </tr>
            <tr>
                <td>Country</td>
                <td><html:text property="country"/></td>
            </tr>
        </table>
    </p>
    <p>
    <table><tr>
            <td><input type="submit" name="actionMethod" value="updateAddress" /></td>
        </tr></table>
</html:form>
</p>
</body>
</html>
