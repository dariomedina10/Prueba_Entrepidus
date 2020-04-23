<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PROJECT_EMPLOYEES.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>::..Session Start..::</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" class="container" runat="server">
        <center>
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-6">
                    <h3>Session Start</h3>
                     <img class="img-fluid rounded-circle  centrado" src="image/image2.jpg" alt="cpiprodesign">
                 
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <br />
                            <center>
                            <label for="inputCity">User</label>
                        <asp:TextBox ID="TextBox1" placeholder="user" CssClass="form-control" runat="server" ></asp:TextBox>
                    <br />
                            </center>
                     <label for="inputCity">Password</label>

                    <asp:TextBox ID="TextBox2" type="password" placeholder="Password" CssClass="form-control" runat="server"></asp:TextBox><br />
                    <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
                    <br />
                     <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Login"  />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Width="70" Text="Exit"  />
                        </div>
                    
                       
                    </div>
                </div>
            </div>
        </div>

</center>



    </form>
</body>
</html>
