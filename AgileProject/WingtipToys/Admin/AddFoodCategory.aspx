<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddFoodCategory.aspx.cs" Inherits="WingtipToys.Admin.AddFoodCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <table style="width:100%;"> 
         <tr>
    <td class="halo1" style="height: 20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                  <td class="halo2" style="height: 20px">
                        <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
                </td>
               
           </tr>
         <tr>
                <td class="halo1">Category Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="halo2">
                    <asp:TextBox ID="txtName" runat="server" Width="165px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="*Name field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                
                    
                    <br />
                    
                
                    
                </td>
               
            </tr>
        
            <tr >
                <td class="halo1">Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="halo2">
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Height="126px" Width="214px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtDescription" runat="server" ErrorMessage="*Description field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        </td>     
            </tr>
          <tr>
                <td class="halo1">

                </td>
                <td class="halo2">

                    <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Add" Width="146px" BackColor="#FFFF99" BorderColor="#999966" BorderStyle="Ridge" Font-Bold="True" ForeColor="#333333"/>
                        <asp:Label ID="LabelStatus" runat="server" ></asp:Label>
                       </td>
            </tr>
      </table>
</asp:Content>
