<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="JqueryAjaxInsert.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <script src="jquery-3.6.0.js"></script>
    <script type="text/javascript">
            function Insert() {
            $.ajax({
                url:'Employee.aspx/EmployeeInsert',
                type:'post',
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                data: "{A:'"+ $("#txtName").val() + "' , B:'" + $("#txtAddress").val() +"', C:'"+ $("#txtAge").val()+"'}",
                success: function() {
                          alert( 'Record saved successfully');
                },
                error: function () {
                    alert( 'Record not saved successfully');
                 }
           
             });
        }
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
            <tr>
            <td> Name:</td>
            <td><input type="text"  id="txtName"/></td>

            <td> Address:</td>
            <td><input type="text"  id="txtAddress"/></td>

            <td> Age:</td>
            <td><input type="text"  id="txtAge"/></td>

            <td> </td>
            <td><input type="button"  id="btnInsert" text="Save" onclick="Insert()" /> </td>
            </tr>
            </table>
        </div>
    </form>
</body>
</html>
