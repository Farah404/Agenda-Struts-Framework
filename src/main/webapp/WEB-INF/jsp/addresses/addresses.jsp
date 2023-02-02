<%@page import="com.axyus.agendastruts.bo.Address"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Addresses List</title>
        <style>
            <%@include file="../../css/style2.css" %>
        </style>
    </head>
    <body>
        <div class="header">
            <h1> <a href="/strutsExample" style="cursor: pointer">Welcome to your digital Agenda </a></h1>
            <p>Adrresses List</p>
        </div>
        <div class="container">
        <form name="addressform" action="addressaction.do">
            <div class="actions">
                <input type="submit" name="actionMethod" value="addAddress" />
                <input type="submit" name="actionMethod" id="editbutton" value="editAddress" disabled="true" />
                <input type="submit" name="actionMethod" id="deletebutton" value="deleteAddress" disabled="true" onclick="return checkDelete();" />
            </div>     
            
            <table>
                <tr>
                    <th>Id</th>
                    <th>Street Number</th>
                    <th>Street Name</th>
                    <th>City</th>
                    <th>Postal Code</th>
                    <th>Country</th>
                </tr>

                <c:forEach items="${addressesList}" var="address">
                    <tr>
                        <td>
                            <input type="radio" name="addressId" value="<c:out value="${address.addressId}"></c:out>" onclick="javascript:enableEditDelete();">
                        </td>
                        <td>
                            <p><c:out value="${address.streetNumber}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${address.streetName}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${address.city}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${address.postalCode}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${address.country}"></c:out></p>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </p>
        <p>

    </form>
        </div>
</p>
<script>
    function checkDelete() {
        return confirm("Are u sure you want to delete this address..?");
    }
    function enableEditDelete() {
        document.getElementById('editbutton').disabled = false;
        document.getElementById('deletebutton').disabled = false;
    }
</script>
</body>
</html>
