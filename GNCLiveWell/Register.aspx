<%@ Page Title="" Language="C#" MasterPageFile="~/GNC.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GNCLiveWell.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
         <h2>Not Yet Register?</h2> 
       <h3>Email:   </h3>
        <asp:TextBox ID="txtEmail" runat="server" Height="25px" Width="229px"></asp:TextBox>
       
            <h3>Password:</h3>
        <asp:TextBox ID="txtPassword" runat="server" Height="25px" Width="229px"></asp:TextBox>
        <br />
        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" Height="31px" Width="94px" />
        <br />
        <asp:Literal ID="litRegError" runat="server"></asp:Literal>
        <br />
        <h2>Login Now</h2> 
         <h3>Email:   </h3><asp:TextBox ID="txtLoginEmail" runat="server" Height="25px" Width="229px"></asp:TextBox>
        <br />
          <h3>Password:</h3>
        <asp:TextBox ID="txtLoginPassword" runat="server" Height="25px" Width="229px"></asp:TextBox>
        <br />
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Height="31px" Width="94px" />
        <br />
        <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
    </form>

</asp:Content>
