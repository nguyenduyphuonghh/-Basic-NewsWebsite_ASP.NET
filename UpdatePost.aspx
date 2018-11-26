<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="UpdatePost.aspx.cs" Inherits="WebBasic.UpdatePost" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Sửa bài đăng</h1>
    <div id="ndcontent">
        <h4>Loại bản tin:</h4>
        <asp:DropDownList ID="drBantin" runat="server" Width="429px" Height="30px"></asp:DropDownList>
        <h4>Tiêu đề bản tin:</h4>
        <asp:TextBox ID="txtTieuDe" runat="server" Width="611px" Height="30px" MaxLength="200" TextMode="MultiLine" Wrap="True"></asp:TextBox>
        <h4>Trích dẫn: </h4>
        <asp:TextBox ID="txtTrichDan" runat="server" Width="611px" Height="122px" MaxLength="200" TextMode="MultiLine"></asp:TextBox>
        <h4>Nội dung bản tin:</h4>
        <CKEditor:CKEditorControl ID="txtNoiDung" runat="server"></CKEditor:CKEditorControl>
        <br /><br />
        <asp:Button ID="btnUpdatePost" runat="server" Text="Cập nhật chỉnh sửa" Width="123px" OnClick="btnUpdatePost_Click" />
    </div>
</asp:Content>
