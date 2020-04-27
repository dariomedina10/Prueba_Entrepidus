<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="PROJECT_EMPLOYEES.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Record Of Employees</title>
       <script src="Scripts/bootstrap.min.js"></script>
    
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>

    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>

    <script src="Scripts/bootstrap-datetimepicker.pt-BR.js" type="text/javascript"></script>

    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-combined.min.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />


    <link href="CSS/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />


    <script src="Scripts/bootstrap.min.js"></script>
     <!-- Bootstrap -->
<script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
        
</head>
    <body>
        <form id="form1" runat="server">
            <div>
                <center>
                    <h2> <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label></h2> <a href="index.aspx" >Logout System</a>   <a href="Users.aspx" >Add Administrator     <a href="Employees_List.aspx" >Employees List</a> <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.aspx" >
                <asp:Label ID="Label2" runat="server" ForeColor="#000099" Text="Label"></asp:Label>
                </a>
              &nbsp;<div class="form-row">
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
                                 <br />
                                 <td><asp:TextBox ID="TextBox4" placeholder="enter here Email" CssClass="form-control" runat="server" Width="220" TabIndex="4"   ></asp:TextBox>  </td>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="You must enter the Phone" ForeColor="#CC0000"></asp:RequiredFieldValidator>   
                                 <br />
                                 <td><asp:TextBox ID="TextBox3" placeholder="enter here Phone" CssClass="form-control" runat="server" Width="220" TabIndex="4"   ></asp:TextBox> </td>
                                <br />
                                <td><asp:Calendar ID="Calendar1" runat="server" Height="200px" Width="220px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" OnSelectionChanged="Calendar1_SelectionChanged2">
                                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                                </asp:Calendar><asp:TextBox ID="txtDate" placeholder="Click here date contract" runat="server" ></asp:TextBox></td>
                                     <td>    </td>
                                 <br />
                                
                                 <br />
                                 <td> <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged" Width="220px">
                                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                                </asp:Calendar><asp:TextBox ID="txtDate2" placeholder="Click here date birth" runat="server" ></asp:TextBox></td>
                                     <br />  
                                 <td><strong>Is Freelance?</strong><asp:RadioButton ID="Radio1" runat="server" Text="Si" OnCheckedChanged="Radio1_CheckedChanged" TabIndex="8"></asp:RadioButton> <asp:RadioButton ID="Radio2" runat="server" Text="No" OnCheckedChanged="Radio2_CheckedChanged" TabIndex="9"></asp:RadioButton> </td>
                                  <br /> 
                                  <td>  <asp:TextBox ID="TextBox5" placeholder="enter here Hourly Rate" CssClass="form-control" runat="server" Width="213px" TabIndex="10" ></asp:TextBox>

        </div>
                           </tr>

                 
                                     
                             <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="Button1_Click" />
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;
                                 <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Clean" OnClick="Button2_Click1"/>
                            </center>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            
        </div>
</center>
        </div>
    </form>
        
    <%-- <script>
      // Tomamos el valor de sessionStorage y localStorage de la siguiente manera:
      $("nick").text(sessionStorage.nick);
      $("pass").text(localStorage.pass); 
 
     /* $("#btnSalir").click(function(){
        // Con el metodo Clear limpiamos todo lo que tengamos en sessionStorage o localStorage 
        sessionStorage.clear();
        localStorage.clear();
        window.location="index.html";*
      });*/
    </script>--%>
</body>
</html>
