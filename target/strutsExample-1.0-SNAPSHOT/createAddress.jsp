<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Address</title>
</head>
<body bgcolor="silver">
<br></br>
<body>
<html:html>
    <div style="color:red">
    <html:errors />
    </div>
    <html:form action="/createAddress" method="post">
 
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
        <html:submit>Submit</html:submit>
        <br><br>
    </html:form>
</html:html>
</body>
</html>