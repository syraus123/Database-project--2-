<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Availability.aspx.cs" Inherits="Syraus_Holley_Final_Project.Availability" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Available Books</h2>
    <asp:Label ID="lblCheck" runat="server" Text="Check Out Book:" AssociatedControlID="txtCheck"></asp:Label>
    <asp:TextBox ID="txtCheck" runat="server" OnTextChanged="txtCheck_TextChanged"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Enter" OnClick="Button1_Click" />
    <br />
    <asp:SqlDataSource ID="sds1" runat="server" ConnectionString="<%$ ConnectionStrings:myCCon %>" SelectCommand="SELECT [Title], [InQuantity] FROM [Books]"></asp:SqlDataSource>
    <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" DataSourceID="sds1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="InQuantity" HeaderText="InQuantity" SortExpression="InQuantity" />
        </Columns>
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
    <h2>All Books </h2>
    <asp:SqlDataSource ID="sdsAv" runat="server" ConnectionString="<%$ ConnectionStrings:myCCon %>" SelectCommand="SELECT [Title], [Genre], [Author] FROM [Books]"></asp:SqlDataSource>
    <asp:GridView ID="gvAv" runat="server" AutoGenerateColumns="False" DataSourceID="sdsAv" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
        </Columns>

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

</asp:Content>
