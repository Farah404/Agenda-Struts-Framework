<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
               <style>
            <%@include file="../../css/style.css" %>
        </style>
    </head>
    <body>
       <div class="header">
            <h1> <a href="/strutsExample" style="cursor: pointer">Welcome to your digital Agenda </a></h1>
            <p><a>Update Customer </a></p></div>
    <html:form>
        <div class="container">
        <table>
            <tr>
                <td class="label">Customer ID</td>
                <td><html:text property="customerId" disabled="true"/></td>
            </tr>
            <tr>
                <td class="label">Last Name</td>
                <td class="value"><html:text property="lastName"/></td>
            </tr>
            <tr>
                <td class="label">First Name</td>
                <td class="value"><html:text property="firstName"/></td>
            </tr>
            <tr>
                <td class="label">Username</td>
                <td class="value"><html:text property="username"/></td>
            </tr>
            <tr>
                <td class="label">Email</td>
                <td class="value"><html:text property="email"/></td>
            </tr>
            <tr>
                <td class="label">Phone Number</td>
                <td class="value"><html:text property="phoneNumber"/></td>
            </tr>
            <tr>
                <td class="label">Address ID</td>
                <td class="value"><html:text property="address.addressId" disabled="true"/></td>
            </tr>
            <tr>
                <td class="label">Street Number</td>
                <td class="value"><html:text property="address.streetNumber"/></td>
            </tr>
            <tr>
                <td class="label">Street Name</td>
                <td class="value"><html:text property="address.streetName"/></td>
            </tr>
            <tr>
                <td class="label">City</td>
                <td class="value"><html:text property="address.city"/></td>
            </tr>
            <tr>
                <td class="label">Postal Code</td>
                <td class="value"><html:text property="address.postalCode"/></td>
            </tr>
            <tr>
                <td class="label">Country</td>
                <td class="value"><html:text property="address.country"/></td>
            </tr>
            <tr>
            <td><input type="submit" name="actionMethod" value="updateCustomer" /></td>
        </tr>
        </table>
        </div>
</html:form>
</p>
</body>
</html>
