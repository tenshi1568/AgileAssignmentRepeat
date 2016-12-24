<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OwnPizza.aspx.cs" Inherits="WingtipToys.OwnPizza" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 


            <h2>Create Own Pizza</h2>

        
      <lable>Name :</lable> 
    <asp:TextBox ID="foodname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="* Food name required." runat="server" ControlToValidate="foodname" SetFocusOnError="true" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>
            </br>
      </br>
            <lable>Choose Your Size</lable></br>
                         
        <asp:RadioButton ID="smallButton" runat="server" groupname="SizeGroup" Text="Small(12-inch)"/>
        <asp:RadioButton ID="mediumButton" runat="server" groupname="SizeGroup" Checked="True" Text="Medium(14-inch)"/>
         <asp:RadioButton ID="largeButton" runat="server" groupname="SizeGroup" Text="Large(16-inch)" />   <br />
                
         
             <br />
              
         <label aria-atomic="False">Choose Your Crust</label></br>

      
     
          
                 <asp:RadioButton ID="regularButton" runat="server" groupname="CrustGroup" Text="Regular"  />
                <asp:RadioButton ID="thinButton" runat="server" groupname="CrustGroup" Text="Thin"/>
                <asp:RadioButton ID="thickButton" runat="server" groupname="CrustGroup" Checked="True" Text="Thick"/>   <br />
      
             <br />

            <label>Choose Your Sauce</label></br>
                               <asp:RadioButton ID="bbqButton" runat="server" groupname="SauceGroup" Text=" BBQ Sauce"  />   
                       <asp:RadioButton ID="PestoButton" runat="server" groupname="SauceGroup" Text="Pesto Sauce" Checked="True"  />   
                   
               </br></br>
    
             <label>Choose Your Toppings (Add on Each Toppings + Rm2) </label></br>

    
  

    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        <asp:ListItem>Bacon</asp:ListItem>
        <asp:ListItem>Ham</asp:ListItem>
        <asp:ListItem>Onion</asp:ListItem>
        <asp:ListItem>Sausage</asp:ListItem>
        <asp:ListItem>Pepperoni</asp:ListItem>
        <asp:ListItem>Mushroom</asp:ListItem>
        <asp:ListItem>Fresh Garlic</asp:ListItem>
        <asp:ListItem Selected="True">Green Pepper</asp:ListItem>
            </asp:CheckBoxList>


            <br />


     <div class="form-group"> <asp:Button ID="orderButton" runat="server" Text="Order" OnClientClick="orderButton_Click" OnClick="orderButton_Click" CssClass="btn btn-lg btn-primary" BackColor="#0066CC" ForeColor="White"/></div>
  
        <br />

        <h3>Total Cost(RM) :</h3>

        <div class="form-group"><asp:Label ID="resultTotal" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Status" runat="server"></asp:Label>
            <br />
            <asp:Label ID="resulttext" runat="server" Visible="False"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
       </div>
   
</asp:Content>
