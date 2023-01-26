<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
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
            a {
                all: unset;
            }
            label {
                padding: 12px 12px 12px 0;
                display: inline-block;
                float: left;
            }
            input[type=submit] {
                background-color: #04AA6D;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                width: 100%;
            }
            input[type=submit]:hover {
                background-color: #45a049;
            }
            .container {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 2%;
                text-align: center;
                margin-left: 25%;
                margin-right: 25%;
                margin-top: 2%;
                margin-bottom: 2%;
                display: flex;
                justify-content: center;
            }
            .label{
                float: left;
            }
            table {
                align-self: center;
            }
            th, td {
                padding: 15px;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <h1> <a href="/strutsExample" style="cursor: pointer">Welcome to your digital Agenda </a></h1>
            <p><a>Create Address </a></p>

        </div>
        <html:form>
            <div class="container">
                <table>
                    <tr>
                        <td class="label">Street Number</td>
                        <td class="value"><html:text property="streetNumber" value=""/></td>
                    </tr>
                    <tr>
                        <td class="label">Street Name</td>
                        <td class="value"><html:text property="streetName" value=""/></td>
                    </tr>
                    <tr>
                        <td class="label">City</td>
                        <td class="value"><html:text property="city" value=""/></td>
                    </tr>
                    <tr>
                        <td class="label">Postal Code</td>
                        <td class="value"><html:text property="postalCode" value=""/></td>
                    </tr>
                    <tr>
                        <td class="label">Country</td>
                        <td class="value"><html:text property="country" value=""/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="actionMethod" value="saveAddress" /></td>
                    </tr>
                </table>
            </html:form>
        </div>
    </body>
</html>