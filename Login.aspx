<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebBasic.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Đăng nhập vào hệ thống</h1>
    <div id="ndcontent">
        <h4>Tên đăng nhập:</h4>
        <asp:TextBox ID="txtUserName" runat="server" Width="300" Height="20"></asp:TextBox>
        <h4>Mật khẩu:</h4>
        <asp:TextBox ID="txtPassWord" runat="server" Width="300" Height="20" TextMode="Password" OnTextChanged="txtPassWord_TextChanged"></asp:TextBox>
        <br /><br />
        <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" Height="28px" OnClick="btnLogin_Click" Width="123px" />
        <br />
        <h4>
            <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
        </h4>
    </div>
</asp:Content>
