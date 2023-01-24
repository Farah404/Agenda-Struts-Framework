<%-- 
    Document   : all-customers
    Created on : 17 janv. 2023, 15:55:18
    Author     : farah.gauduin
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda Manager</title>
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
        </style>
    </head>
    <body>
        <div class="header">
            <h1> <a href="/" style="cursor: pointer">Welcome to your digital Agenda </a></h1>
        </div>
        <div class="container">
            <td>
            <html:link style="cursor: pointer; color: blue" action="/createAddress.do">Create Address</html:link>
            &nbsp;&nbsp;&nbsp;&nbsp; 
            <html:link style="cursor: pointer; color: blue" action="/createCustomer.do">Create Customer</html:link><br />  <br />
            </td>
            <table>
                <tr>
                    <th>Customer Id</th>
                    <th>Last Name</th>
                    <th>First Name</th>
                    <th>Username</th>
                    <th>Phone number</th>
                    <th>Email</th>
                    <th>Address Id</th>
                    <th>Street Number</th>
                    <th>Street Name</th>
                    <th>City</th>
                    <th>Postal Code</th>
                    <th>Country</th>
                </tr>

                <tr>
                    <td>
                        <p></p>
                    </td> 
                    <td>
                        <p></p>
                    </td> 
                    <td>
                        <p></p>
                    </td> 
                    <td>
                        <p></p>
                    </td> 
                    <td>
                        <p></p>
                    </td> 
                    <td>
                        <p></p>
                    </td> 
                    <td>
                        <p></p>
                    </td> 
                    <td>
                        <p></p>
                    </td> 
                    <td>
                        <p></p>
                    </td> 
                    <td>
                        <p></p>
                    </td> 
                    <td>
                        <p></p>
                    </td> 
                    <td>
                        <p></p>
                    </td> 
                </tr>
            </table>
        </div>
    </body>
</html>
