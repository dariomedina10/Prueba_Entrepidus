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
                                <%-- <p align="center">
                         <strong>Indentification Card</strong>
                        </p>--%>
                             <tr>
                                 <td><asp:TextBox ID="id" placeholder="enter here identification card" CssClass="form-control" runat="server" Width="220" OnTextChanged="id_TextChanged" ></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="id" ErrorMessage="You must enter the id " ForeColor="#CC0000"></asp:RequiredFieldValidator>   
                                 </td>
                                 <br />
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="You must enter the name" ForeColor="#CC0000"></asp:RequiredFieldValidator>   
                                 <td><asp:TextBox ID="TextBox7" placeholder="enter here employee name" CssClass="form-control" runat="server" Width="220" TabIndex="1" ></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="You must enter the Last name" ForeColor="#CC0000"></asp:RequiredFieldValidator>   
                                 <td><asp:TextBox ID="TextBox2" placeholder="enter here  Last name" CssClass="form-control" runat="server" Width="220" TabIndex="1" ></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="You must enter the Adress" ForeColor="#CC0000"></asp:RequiredFieldValidator>   
                                 <td><asp:TextBox ID="TextBox1" placeholder="enter here Adress" CssClass="form-control" runat="server" Width="243px" Height="59px" TextMode="MultiLine" TabIndex="2" ></asp:TextBox></td> </td>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="You Must Enter Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <tr/>
            </center>
        </div>
    </form>
</body>
</html>
