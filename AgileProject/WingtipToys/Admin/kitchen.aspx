<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="kitchen.aspx.cs" Inherits="WingtipToys.Admin.kitchen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $("[src*=plus]").live("click", function () {
        $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
        $(this).attr("src", "Images/minus.png");
    });
    $("[src*=minus]").live("click", function () {
        $(this).attr("src", "Images/plus.png");
        $(this).closest("tr").next().remove();
    });
</script>

    <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" CssClass="Grid"
    DataKeyNames="OrderId" OnRowDataBound="OnRowDataBound">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <img alt = "" style="cursor: pointer" src="Images/plus.png" />
                <asp:Panel ID="pnlOrders" runat="server" Style="display: none">
                    <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="false" CssClass = "ChildGrid">
                        <Columns>
                            <asp:BoundField ItemStyle-Width="150px" DataField="OrderId" HeaderText="Order Id" />
                            <asp:BoundField ItemStyle-Width="150px" DataField="OrderDate" HeaderText="Date" />
                           <asp:BoundField ItemStyle-Width="150px" DataField="Total" HeaderText="Total Amount" />
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField ItemStyle-Width="150px" DataField="Username" HeaderText="User Name" />
        <asp:BoundField ItemStyle-Width="150px" DataField="Address" HeaderText="Address" />
        <asp:BoundField ItemStyle-Width="150px" DataField="City" HeaderText="City" />
    </Columns>
</asp:GridView>
</asp:Content>
