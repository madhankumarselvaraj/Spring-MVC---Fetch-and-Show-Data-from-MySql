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
    <style>
        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>
    <body>
    <center>
        <div>
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
        </div>
    </center>
</body>
</html>
