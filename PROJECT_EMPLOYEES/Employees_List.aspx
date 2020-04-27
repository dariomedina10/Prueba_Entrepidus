<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees_List.aspx.cs" Inherits="PROJECT_EMPLOYEES.Employees_List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>List of Employees</title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="5">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
