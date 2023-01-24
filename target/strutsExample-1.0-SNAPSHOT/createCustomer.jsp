<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Create Customer</title>
    </head>
    <body bgcolor="silver">
        <br></br>
    <body>
        <html:html>
            <div style="color:red">
                <html:errors />
            </div>
            <html:form action="/createCustomer" method="post">
                Enter your Street Number:
                <html:text property="streetNumber" size="50" /><br><br>
                Enter your Street Name:
                <html:text property="streetName" size="50" /><br><br>
                Enter your City
                <html:text property="city" size="50" /><br><br>
                Enter your Postal Code
                <html:text property="postalCode" size="30" /><br><br>
                Enter your Country
                <html:text property="country" size="30" /><br><br>
                
                Enter your Last Name
                <html:text property="lastName" size="50" /><br><br>
                Enter your First Name:
                <html:text property="firstName" size="50" /><br><br>
                Enter your Username
                <html:text property="username" size="50" /><br><br>
                Enter your Email
                <html:text property="email" size="30" /><br><br>
                Enter your Phone Number
                <html:text property="phoneNumber" size="30" /><br><br>
                <html:submit>Submit</html:submit>
                    <br><br>
            </html:form>
        </html:html>
    </body>
</html>