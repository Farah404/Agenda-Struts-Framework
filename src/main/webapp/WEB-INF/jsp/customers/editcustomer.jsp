<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <body>
        <p><b>Struts Example - Simple Agenda App</b></p>
        <b>Update Customer</b>
    <html:form>
        <table style="background-color:#82CAFA;">
            <tr>
                <td>Customer ID</td>
                <td><html:text property="customerId" disabled="true"/></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><html:text property="lastName"/></td>
            </tr>
            <tr>
                <td>First Name</td>
                <td><html:text property="firstName"/></td>
            </tr>
            <tr>
                <td>Username</td>
                <td><html:text property="username"/></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><html:text property="email"/></td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td><html:text property="phoneNumber"/></td>
            </tr>
            <tr>
                <td>Address ID</td>
                <td><html:text property="address.addressId" disabled="true"/></td>
            </tr>
            <tr>
                <td>Street Number</td>
                <td><html:text property="address.streetNumber"/></td>
            </tr>
            <tr>
                <td>Street Name</td>
                <td><html:text property="address.streetName"/></td>
            </tr>
            <tr>
                <td>City</td>
                <td><html:text property="address.city"/></td>
            </tr>
            <tr>
                <td>Postal Code</td>
                <td><html:text property="address.postalCode"/></td>
            </tr>
            <tr>
                <td>Country</td>
                <td><html:text property="address.country"/></td>
            </tr>
        </table>
    </p>
    <p>
    <table><tr>
            <td><input type="submit" name="actionMethod" value="updateCustomer" /></td>
        </tr></table>
</html:form>
</p>
</body>
</html>
