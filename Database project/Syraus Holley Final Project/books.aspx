<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="books.aspx.cs" Inherits="Syraus_Holley_Final_Project.add_members" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblTitle" runat="server" Text="Title:" AssociatedControlID="txtTitle"></asp:Label>
    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblAuthor" runat="server" Text="Author:" AssociatedControlID="txtAuthor"></asp:Label>
    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblGenre" runat="server" Text="Genre:" AssociatedControlID="ddlGenre"></asp:Label>
    <asp:DropDownList ID="ddlGenre" runat="server">
        <asp:ListItem Text="-Select One-" Value="" />
        <asp:ListItem Text="Romance" Value="Romance" />
        <asp:ListItem Text="Adult" Value="Adult" />
        <asp:ListItem Text="Historical Figure" Value="Historical Figure" />
        <asp:ListItem Text="Drama" Value="Drama" />
        <asp:ListItem Text="Music" Value="Music" />
        <asp:ListItem Text="Culture" Value="Culture" />
        <asp:ListItem Text="Travel" Value="Travel" />
        <asp:ListItem Text="Movies/TV" Value="Movies/TV" />
        <asp:ListItem Text="Christian" Value="Christian" />
        <asp:ListItem Text="Kids" Value="Kids" />
    </asp:DropDownList>
    <br />
     <asp:Label ID="lblYear" runat="server" Text="Year:" AssociatedControlID="txtYear"></asp:Label>
    <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblPrice" runat="server" Text="Price:" AssociatedControlID="txtPrice"></asp:Label>
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="LabelQ" runat="server" Text="Quantity:" AssociatedControlID="txtQuantity"></asp:Label>
    <asp:TextBox ID="txtQuantity" runat="server" OnTextChanged="txtQuantity_TextChanged"></asp:TextBox>
    <br />
    <asp:Label ID="Bestsellers" runat="server" Text="Bestsellers"></asp:Label>
    <asp:DropDownList ID="ddlBest" runat="server">
        <asp:ListItem Text="-Select One-" Value="" />
        <asp:ListItem Text="Yes" Value="Yes" />
        <asp:ListItem Text="No" Value="No" />
    </asp:DropDownList>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    <br />
    <asp:Literal ID="lblOut" runat="server"></asp:Literal>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myCCon %>" DeleteCommand="DELETE FROM [Books] WHERE [bId] = @original_bId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Genre] = @original_Genre) OR ([Genre] IS NULL AND @original_Genre IS NULL)) AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([Year] = @original_Year) OR ([Year] IS NULL AND @original_Year IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Bestsellers] = @original_Bestsellers) OR ([Bestsellers] IS NULL AND @original_Bestsellers IS NULL)) AND (([InQuantity] = @original_InQuantity) OR ([InQuantity] IS NULL AND @original_InQuantity IS NULL)) AND (([OutQuantity] = @original_OutQuantity) OR ([OutQuantity] IS NULL AND @original_OutQuantity IS NULL))" InsertCommand="INSERT INTO [Books] ([Title], [Genre], [Author], [Year], [Price], [Bestsellers], [InQuantity], [OutQuantity]) VALUES (@Title, @Genre, @Author, @Year, @Price, @Bestsellers, @InQuantity, @OutQuantity)" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [Title] = @Title, [Genre] = @Genre, [Author] = @Author, [Year] = @Year, [Price] = @Price, [Bestsellers] = @Bestsellers, [InQuantity] = @InQuantity, [OutQuantity] = @OutQuantity WHERE [bId] = @original_bId AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Genre] = @original_Genre) OR ([Genre] IS NULL AND @original_Genre IS NULL)) AND (([Author] = @original_Author) OR ([Author] IS NULL AND @original_Author IS NULL)) AND (([Year] = @original_Year) OR ([Year] IS NULL AND @original_Year IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Bestsellers] = @original_Bestsellers) OR ([Bestsellers] IS NULL AND @original_Bestsellers IS NULL)) AND (([InQuantity] = @original_InQuantity) OR ([InQuantity] IS NULL AND @original_InQuantity IS NULL)) AND (([OutQuantity] = @original_OutQuantity) OR ([OutQuantity] IS NULL AND @original_OutQuantity IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_bId" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Genre" Type="String" />
            <asp:Parameter Name="original_Author" Type="String" />
            <asp:Parameter Name="original_Year" Type="Int32" />
            <asp:Parameter Name="original_Price" Type="Int32" />
            <asp:Parameter Name="original_Bestsellers" Type="String" />
            <asp:Parameter Name="original_InQuantity" Type="Int32" />
            <asp:Parameter Name="original_OutQuantity" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Genre" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Year" Type="Int32" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Bestsellers" Type="String" />
            <asp:Parameter Name="InQuantity" Type="Int32" />
            <asp:Parameter Name="OutQuantity" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Genre" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Year" Type="Int32" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Bestsellers" Type="String" />
            <asp:Parameter Name="InQuantity" Type="Int32" />
            <asp:Parameter Name="OutQuantity" Type="String" />
            <asp:Parameter Name="original_bId" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Genre" Type="String" />
            <asp:Parameter Name="original_Author" Type="String" />
            <asp:Parameter Name="original_Year" Type="Int32" />
            <asp:Parameter Name="original_Price" Type="Int32" />
            <asp:Parameter Name="original_Bestsellers" Type="String" />
            <asp:Parameter Name="original_InQuantity" Type="Int32" />
            <asp:Parameter Name="original_OutQuantity" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="gv1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="bId" AllowPaging="True" CellPadding="4" AutoGenerateColumns="False" AllowSorting="True" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="bId" HeaderText="bId" InsertVisible="False" ReadOnly="True" SortExpression="bId" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Bestsellers" HeaderText="Bestsellers" SortExpression="Bestsellers" />
            <asp:BoundField DataField="InQuantity" HeaderText="InQuantity" SortExpression="InQuantity" />
            <asp:BoundField DataField="OutQuantity" HeaderText="OutQuantity" SortExpression="OutQuantity" />
        </Columns>
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

