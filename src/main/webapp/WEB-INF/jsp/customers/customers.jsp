<%@page import="com.axyus.agendastruts.bo.Address"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Iterator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customers List</title>
        <style>
            body {
                font-family: Arial;
                margin: 0;
            }
            * {
                box-sizing: border-box;
            }
            /* Header/Logo Title */
            .header {
                padding: 60px;
                text-align: center;
                background-image:url("https://plos.org/wp-content/uploads/2020/07/abstract-image_color-tone.jpg");
                color: white;
                font-size: 30px;
            }
            .container{
                padding: 5%;
                text-align: center;
            }
            a {
                all: unset;
            }
            table, th, td {
                border: 1px solid;
            }
            table {
                width: 100%;
            }
            form {
                width: 100%;
                height: 100%;
                border-radius: 5px;
                align-items: center;
                display: inline-block;
                margin-bottom: 2%;
            }
            input{
                width: 80%;
                font: 16px system-ui;
            }
            .search-button{
                background-color: #4CAF50; /* Green */
                color: white;
                padding: 5px 30px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                border-radius: 8px;
                height: 100%;
                cursor: pointer;
            }
            
            input{
                width: 20%
            }
            .actions{
                margin-bottom: 1%;
                margin-left: 1%;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <h1> <a href="/strutsExample" style="cursor: pointer">Welcome to your digital Agenda </a></h1>
            <p>Customers List</p>
        </div>
        <div class="container">
        <form name="customerform" action="customeraction.do">   
            <div class="actions">
                <input type="submit" name="actionMethod" value="addCustomer" />
                <input type="submit" name="actionMethod" id="editbutton" value="editCustomer" disabled="true" />
                <input type="submit" name="actionMethod" id="deletebutton" value="deleteCustomer" disabled="true" onclick="return checkDelete();" />
            </div>
            <table>
                <tr>
                    <th>Id</th>
                    <th>Last Name</th>
                    <th>First Name</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>Street Number</th>
                    <th>Street Name</th>
                    <th>City</th>
                    <th>Postal Code</th>
                    <th>Country</th>
                </tr>

                <c:forEach items="${customerslist}" var="customers">
                    <tr>
                        <td>
                            <input type="radio" name="customerId" value="<c:out value="${customers.customerId}"></c:out>" onclick="javascript:enableEditDelete();">
                        </td>
                        <td>
                            <p><c:out value="${customers.lastName}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${customers.firstName}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${customers.username}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${customers.email}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${customers.phoneNumber}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${customers.address.streetNumber}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${customers.address.streetName}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${customers.address.city}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${customers.address.postalCode}"></c:out></p>
                        </td>
                        <td>
                            <p><c:out value="${customers.address.country}"></c:out></p>
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
        return confirm("Are u sure you want to delete this customer..?");
    }
    function enableEditDelete() {
        document.getElementById('editbutton').disabled = false;
        document.getElementById('deletebutton').disabled = false;
    }
</script>
</body>
</html>
