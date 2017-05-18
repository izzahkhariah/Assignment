<%@ Page Title="" Language="C#" MasterPageFile="~/GNC.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GNCLiveWell.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductCode" DataSourceID="AdminProduct">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" ReadOnly="True" SortExpression="ProductCode" />
                <asp:BoundField DataField="ProductDesription" HeaderText="ProductDesription" SortExpression="ProductDesription" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="AdminProduct" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProductListConnectionString2 %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductCode] = @original_ProductCode AND [ProductDesription] = @original_ProductDesription AND [Price] = @original_Price" InsertCommand="INSERT INTO [Product] ([ProductCode], [ProductDesription], [Price]) VALUES (@ProductCode, @ProductDesription, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProductDesription] = @ProductDesription, [Price] = @Price WHERE [ProductCode] = @original_ProductCode AND [ProductDesription] = @original_ProductDesription AND [Price] = @original_Price">
            <DeleteParameters>
                <asp:Parameter Name="original_ProductCode" Type="Int32" />
                <asp:Parameter Name="original_ProductDesription" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductCode" Type="Int32" />
                <asp:Parameter Name="ProductDesription" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductDesription" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="original_ProductCode" Type="Int32" />
                <asp:Parameter Name="original_ProductDesription" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
