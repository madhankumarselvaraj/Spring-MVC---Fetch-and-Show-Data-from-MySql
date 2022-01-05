<%-- 
    Document   : final
    Created on : 5 Jan, 2022, 5:20:17 PM
    Author     : Madhankumar Selvaraj
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var modelData =${employeeData};
            var parsedata = JSON.parse(JSON.stringify(modelData))
            var rows = "";
            for (var i = 0; i < parsedata.length; i++) {
                var obj = parsedata[i];
                rows += "<tr><td>" + obj.id + "</td><td>" + obj.name + "</td><td>" + obj.salary + "</td></tr>";
            }
            $(rows).appendTo("#itemList tbody");
        });
    </script>
    <style>
        table, th, td {
            border: 1px solid white;
            border-collapse: collapse;
        }
        th, td {
            background-color: #96D4D4;
        }
    </style>
    <body>
        <h1>Employee Data</h1>
        <table id="itemList" >
            <thead>
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>Salary</td>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </body>
</html>
