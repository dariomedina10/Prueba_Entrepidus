<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="PROJECT_EMPLOYEES.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Record Administrators Users</title>
     <script src="Scripts/bootstrap.min.js"></script>
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <div class="form-row">
                        <div class="form-group col-md-6">
                            <center>
                                  <h2> <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label></h2> <a href="index.aspx" >Logout System</a>   <a href="Employees.aspx" >Volver Atras</a>
                                  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.aspx" ><asp:Label ID="Label3" runat="server" ForeColor="#000099" Text="Label" Visible="False"></asp:Label>
                </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.aspx" >
                <asp:Label ID="Label2" runat="server" ForeColor="#000099" Text="Label" Visible="False"></asp:Label>
                </a>&nbsp; <a href="index.aspx" ><asp:Label ID="Label4" runat="server" ForeColor="#000099" Text="Label" Visible="False"></asp:Label>
                </a>
                                  <br />
                                <%-- <p align="center">
                         <strong>Indentification Card</strong>
                        </p>--%>
                             <tr>
                                 <td><asp:TextBox ID="name" placeholder="enter here identification card" CssClass="form-control" runat="server" Width="220" ></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="name" ErrorMessage="You must enter the user name" ForeColor="#CC0000"></asp:RequiredFieldValidator>   
                                 </td>
                                 <br />
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Last_Name" ErrorMessage="You must enter the last name" ForeColor="#CC0000"></asp:RequiredFieldValidator>   
                                 <td><asp:TextBox ID="Last_Name" placeholder="enter here employee name" CssClass="form-control" runat="server" Width="220" TabIndex="1" ></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nick" ErrorMessage="You must enter nick" ForeColor="#CC0000"></asp:RequiredFieldValidator>   
                                 <td><asp:TextBox ID="nick" placeholder="enter here  Last name" CssClass="form-control" runat="server" Width="150px" TabIndex="1"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="nick" ErrorMessage="You must enter password" ForeColor="#CC0000"></asp:RequiredFieldValidator>   
                                 <br />
<asp:TextBox ID="pass" type="password" placeholder="enter  password please" CssClass="form-control" runat="server" Width="150px"></asp:TextBox>
                                     <br />
                                     <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="Button1_Click" />
            </center>
        </div>
    </form>
</body>
</html>
