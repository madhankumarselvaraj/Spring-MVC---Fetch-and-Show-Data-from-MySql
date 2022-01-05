<%-- 
    Document   : index
    Created on : 5 Jan, 2022, 3:34:36 PM
    Author     : Madhankumar Selvaraj
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <form id="login" method="POST" action="/SpringMVC/login">
            <table>
                <tr>
                    <td><label><!-- comment -->User Name : </label></td>
                    <td><input type="text" id="username" name="username" /></td>
                </tr>
                <tr>
                    <td><label><!-- comment -->Password : </label></td>
                    <td><input type="text" id="password" name="password"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button type="sumbit" value="Submit">Submit</button></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
