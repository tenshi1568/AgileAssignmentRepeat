<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowProduct.aspx.cs" Inherits="WingtipToys.Admin.ShowProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <script type = "text/javascript">
          function Confirm() {

              var confirm_value = document.createElement("INPUT");
              confirm_value.type = "hidden";
              confirm_value.name = "confirm_value";
              if (confirm("Do you want to save data?")) {
                  confirm_value.value = "Yes";
              } else {
                  confirm_value.value = "No";
              }
              document.forms[0].appendChild(confirm_value);
          }
        </script>

     <table style="width:100%;">
            <tr>
                <td class="auto-style1">ID</td>
                <td class="style2" >
                    <asp:Label ID="lblID" runat="server"></asp:Label>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style1">Name</td>
                <td class="style2" >
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style1">Price</td>
                <td class="style2" >
                    <asp:Label ID="lblPrice" runat="server"></asp:Label>
                </td>
                
            </tr>
             <tr>
                <td class="auto-style1">Description</td>
                <td class="style2" >
                    <asp:Label ID="lblDes" runat="server"></asp:Label>
                 </td>
                
            </tr>
             <tr>
                <td class="auto-style1">Image</td>
                <td class="style2" >
                    <asp:Label ID="lblImage" runat="server"></asp:Label>
                 </td>
                
            </tr>
 
              <tr>
               <td class="auto-style1">

                   </td>
                <td class="style2" >

                    <asp:Button ID="Button1" runat="server" Text="Edit" Width="102px" OnClick="Button1_Click" />

                </td>
            </tr>
        </table>
</asp:Content>
