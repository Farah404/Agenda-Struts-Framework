<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                    <%List addressesList = (ArrayList) request.getAttribute("addressesList");
                        Iterator itr = addressesList.iterator();
                        while (itr.hasNext()) {
                            Map map = (HashMap) itr.next();
                    %>
            <tr><td><input type="radio" name="addressId" value='<%=map.get("addressId")%>' onclick="javascript:enableEditDelete();"></td>
                <td><%=map.get("streetNumber")%></td>
                <td><%=map.get("streetName")%></td>
                <td><%=map.get("city")%></td>
                 <td><%=map.get("postalCode")%></td>
                 <td><%=map.get("country")%></td>
            </tr>
            <%}%>
        </table>
    </p>
    <p>
    <table><tr>
            <td><input type="submit" name="actionMethod" value="AddBook" /></td>
            <td><input type="submit" name="actionMethod" id="editbutton" value="EditBook" disabled="true" /></td>
            <td><input type="submit" name="actionMethod" id="deletebutton" value="DeleteBook" disabled="true" onclick="return checkDelete();" /></td>
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
