<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="WingtipToys.Admin.Report" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Order Report</h1>    

<asp:TextBox ID="txtFrom" runat="server" CssClass="Date"></asp:TextBox>
<asp:ImageButton ID="btnFrom" runat="server" ImageUrl="~/Images/calendar-icon.png" AlternateText="Caleder" Height="30px" Width="30px" />
    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="btnFrom" TargetControlID="txtFrom"   Format="dd/MM/yyyy" ></ajaxToolkit:CalendarExtender>
<asp:TextBox ID="txtTo" runat="server" CssClass="Date"></asp:TextBox>
<asp:ImageButton ID="btnTo" runat="server" ImageUrl="~/Images/calendar-icon.png" AlternateText="Caleder" Height="30px" Width="30px" />

<ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" PopupButtonID="btnTo" TargetControlID="txtTo"   Format="dd/MM/yyyy" ></ajaxToolkit:CalendarExtender>
<asp:Button ID="btnSave" runat="server" Text="Search" OnClick="btnSearch_Click" />

    <br />

<br />

<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="188px" Width="100%">
    <AlternatingRowStyle BackColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>


    </br>

    <h2> Payment Record</h2>



    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="CardType" HeaderText="CardType" SortExpression="CardType" />
            <asp:BoundField DataField="CardNo" HeaderText="CardNo" SortExpression="CardNo" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToys %>" SelectCommand="SELECT [Date], [Username], [CardType], [CardNo], [Amount] FROM [Payments]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>

