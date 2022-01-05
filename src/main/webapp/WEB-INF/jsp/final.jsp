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
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css"/>
    <script type="text/javascript">
        $(document).ready(function () {
            var modelData =${employeeData};
            var parsedata = JSON.parse(JSON.stringify(modelData));
            $('#itemList').DataTable({
                data: parsedata,
                "columns": [
                    {"data": "id"},
                    {"data": "name"},
                    {"data": "salary"}
                ]
            });
        });
    </script>
    <body>
        <h1>Employee Data</h1>
        <table id="itemList" class="display" style="width:100%">
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
