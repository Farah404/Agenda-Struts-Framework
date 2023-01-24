<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success page</title>
</head>
<body bgcolor="silver">
<table><tr>
Sucessfully added the address to your data base !</tr><br><br>
Street Number: <%=session.getAttribute("streetNumber") %><br><br>
Street Name: <%=session.getAttribute("streetName") %><br><br>
City: <%=session.getAttribute("city") %><br><br>
Postal code: <%=session.getAttribute("postalCode") %><br><br>
Country: <%=session.getAttribute("country") %><br><br>
</table>
<html:link style="cursor: pointer; color: blue" href="/strutsExample">Go back to Home page</html:link>
</body>
</html>