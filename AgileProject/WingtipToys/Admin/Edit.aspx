<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WingtipToys.Admin.Edit" %>
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
    <td class="halo1">ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                  <td class="halo2">
                        <asp:Label ID="lblID" runat="server"></asp:Label>
                </td>
               
           </tr>
         <tr>
                <td class="halo1">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="halo2">
                    <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" runat="server" ErrorMessage="*Name field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </td>
               
            </tr>

            <tr>
                <td class="halo1">Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="halo2">

                    <asp:DropDownList ID="ddlType" runat="server"  DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToys %>" SelectCommand="SELECT * FROM [Categories] ORDER BY [CategoryName]"></asp:SqlDataSource>
            </tr>

            <tr >
                <td class="halo1">Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="halo2">
                    <asp:TextBox ID="txtPrice" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPrice" runat="server" ErrorMessage="*Price field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="* Must be a valid price without any alphabet." ControlToValidate="txtPrice" SetFocusOnError="True" Display="Dynamic" ForeColor="Red" ValidationExpression="^[0-9]*(\.)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
                        </td>     
            </tr>

               <tr >
                <td class="halo1">Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="halo2">
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtDescription" runat="server" ErrorMessage="*Description field is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>     
            </tr>
         
               <tr >
                <td class="halo1">Image &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="halo2">
                     <asp:DropDownList ID="ddlImage" runat="server" >
                    </asp:DropDownList>
                     <asp:FileUpload ID="FileUpload1" runat="server" />
                   <asp:Button ID="btnUploadImage" runat="server" Text="Upload Image" 
                    onclick="btnUploadImage_Click" CausesValidation="False" /> 
                   
                        </td>     
            </tr>
          <tr>
                <td class="halo1">

                </td>
                <td class="halo2">

                    <asp:Button ID="btnEdit" runat="server" OnClick="btnEdit_Click" Text="Save" Width="146px" BackColor="#FFFF99" BorderColor="#999966" BorderStyle="Ridge" Font-Bold="True" ForeColor="#333333"/>
                        <asp:Label ID="LabelStatus" runat="server" ></asp:Label>
                       </td>
            </tr>

         </table>



</asp:Content>
