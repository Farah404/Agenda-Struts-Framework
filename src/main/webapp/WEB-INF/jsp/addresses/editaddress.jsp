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
            <p><a>Update Address </a></p></div>
            <html:form>
            <div class="container">
                <table>
                    <tr>
                        <td class="label">Address ID</td>
                        <td class="value"><html:text property="addressId" disabled="true"/></td>
                    </tr>
                    <tr>
                        <td class="label">Street Number</td>
                        <td><html:text property="streetNumber"/></td>
                    </tr>
                    <tr>
                        <td class="label">Street Name</td>
                        <td class="value"><html:text property="streetName"/></td>
                    </tr>
                    <tr>
                        <td class="label">City</td>
                        <td class="value"><html:text property="city"/></td>
                    </tr>
                    <tr>
                        <td class="label">Postal Code</td>
                        <td class="value"><html:text property="postalCode"/></td>
                    </tr>
                    <tr>
                        <td class="label">Country</td>
                        <td class="value"><html:text property="country"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="actionMethod" value="updateAddress" /></td>
                    </tr>
                </table>
            </div>
        </html:form>
    </p>
</body>
</html>
