<%@page import="com.axyus.agendastruts.bo.Address"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!--    <header>
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/../css/style.css">
    </header>-->
    <body>
    <p><b>Struts Example - Simple Agenda App</b></p>
    <b>Available Addresses</b>
    <form name="addressform" action="/addressaction.do">
        <table style="background-color:#82CAFA;">
            <tr style="color:yellow;">
                <th>&nbsp;</th>
                <th>Street Number</th>
                <th>Street Name</th>
                <th>City</th>
                <th>Postal Code</th>
                <th>Country</th>
            </tr>
                    <%List <Address> addressesList = (ArrayList) request.getAttribute("addressesList");
                          for(int i =0; i< addressesList.size(); i++){
                          Address address = addressesList.get(i);
                    %>
            <tr><td><input type="radio" name="addressId" value='<%=address.getAddressId()%>' onclick="javascript:enableEditDelete();"></td>
                <td><%=address.getStreetNumber()%></td>
                <td><%=address.getStreetName()%></td>
                <td><%=address.getCity()%></td>
                 <td><%=address.getPostalCode()%></td>
                 <td><%=address.getCountry()%></td>
            </tr>
            <%}%>
        </table>
    </p>
    <p>
    <table><tr>
            <td><input type="submit" name="actionMethod" value="addAddress" /></td>
            <td><input type="submit" name="actionMethod" id="editbutton" value="editAddress" disabled="true" /></td>
            <td><input type="submit" name="actionMethod" id="deletebutton" value="deleteAddress" disabled="true" onclick="return checkDelete();" /></td>
        </tr></table>
</form>
</p>
<script>
    function checkDelete() {
        return confirm("Are u sure to delete this book..?");
    }
    function enableEditDelete() {
        document.getElementById('editbutton').disabled = false;
        document.getElementById('deletebutton').disabled = false;
    }
</script>
</body>
</html>
