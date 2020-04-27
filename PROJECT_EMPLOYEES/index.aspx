<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PROJECT_EMPLOYEES.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <%-- <meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <title>::..Home..::</title>
    
        <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
      <script src="Scripts/main.js"></script>  
    <script type="text/javascript">
function Finalizar() {        
    window.close();
}

    </script>
    
  


</head>

     <script src="js/jquery-1.11.0.min.js"></script>
   

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
                            <label for="inputCity">User&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nick" ErrorMessage="You must enter the username" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </label>
                        <asp:TextBox ID="nick" placeholder="enter  user please" CssClass="form-control" runat="server" ></asp:TextBox>
                            </center>
                     <label for="inputCity">Password&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="You must enter the password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </label>
<asp:TextBox ID="pass" type="password" placeholder="enter  password please" CssClass="form-control" runat="server"></asp:TextBox><br />
                    <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
                    <br />
                     <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Login" OnClick="Button1_Click"  />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Width="70" Text="Exit"  />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    
                       
                    </div>
                </div>
            </div>
        </div>

</center>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Keep me logged in" />
        </p>


    </form>
</body>
</html>
