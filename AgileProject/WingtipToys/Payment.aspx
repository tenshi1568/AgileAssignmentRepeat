<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WingtipToys.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Payment Details</h2>

    Amount :  
    
     <asp:Label ID="lbltotal" runat="server" Text=""></asp:Label>
    
     </br>
    
    </br>



      <lable>Card Type  :</lable> 
    <asp:DropDownList ID="ddlcardtype" runat="server">
        <asp:ListItem>Master</asp:ListItem>
        <asp:ListItem>Visa</asp:ListItem>
    </asp:DropDownList>

  
            </br>
      </br>
     <lable>Card Number :</lable> 
    <asp:TextBox ID="txtCardNumber" runat="server" Width="193px"></asp:TextBox>
    
    <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="You have entered invalid number "  ValidationExpression="^\d{15}$" ></asp:RegularExpressionValidator>
    <br />
    <br />
    <h2>CustomerDetails</h2><br />

    <label>First Name  :</label>
     <asp:TextBox ID="TextBox1" runat="server" Width="193px"></asp:TextBox>
    <br />
        <br />
       <label>Last Name  :<asp:TextBox ID="TextBox2" runat="server" Width="193px"></asp:TextBox>
    </label>
    <br/>    <br />
     <label>Address :</label>   <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="69px" Width="203px"></asp:TextBox><br/>
    
    <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check out" />
</asp:Content>
