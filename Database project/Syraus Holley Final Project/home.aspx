<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Syraus_Holley_Final_Project.Report" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Home</h1>

    <h2>List of Genres</h2>
    <asp:SqlDataSource ID="sdsGenre" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myCCon %>" 
        SelectCommand="SELECT [Genre], [Author], [Title] FROM [Books]"></asp:SqlDataSource>
    <asp:GridView ID="gv1" runat="server" DataSourceID="sdsGenre" CellPadding="4" AutoGenerateColumns="True" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <br />
    <h2>Most Popular/Common Authors</h2>
    <asp:SqlDataSource ID="sdsCommon" runat="server" ConnectionString="<%$ ConnectionStrings:myCCon %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
    <asp:GridView ID="gvCommon" runat="server" AutoGenerateColumns="True" CellPadding="4" DataKeyNames="bId" DataSourceID="sdsCommon" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>

    <br />
    <h2>BestSellers</h2>
    <asp:SqlDataSource ID="sdsBestsellers" runat="server" ConnectionString="<%$ ConnectionStrings:myCCon %>" SelectCommand="SELECT [Title], [Author], [Bestsellers] FROM [Books] WHERE Bestsellers = 'Yes'"></asp:SqlDataSource>
    <asp:GridView ID="gvBestsellers" runat="server" AutoGenerateColumns="True" CellPadding="4" DataSourceID="sdsBestsellers" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <h2> Books that came out this year</h2>
    <asp:SqlDataSource ID="sdsBest" runat="server" 
        ConnectionString="<%$ ConnectionStrings:myCCon %>" SelectCommand="SELECT [Title] FROM [Books] WHERE Year > Year(GETDATE()) - 1"></asp:SqlDataSource>
    <asp:GridView ID="gv4" runat="server" DataSourceID="sdsBest" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="True">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
   
</asp:Content>

