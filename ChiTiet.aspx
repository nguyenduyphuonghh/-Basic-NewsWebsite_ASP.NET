<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="WebBasic.ChiTiet1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Repeater ID="rpBanTin" runat="server">
        <ItemTemplate>
            <h1><%# Eval("TieuDe") %></h1>
        </ItemTemplate>
    </asp:Repeater>
    <div id="ndcontent"><br />
        <asp:UpdatePanel ID="up3" runat="server">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer3" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
            <asp:Timer ID="Timer3" Interval="3000" runat="server" OnTick="Timer3_Tick" />                
                <asp:Label ID="lbltest" runat="server" Text=""></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>



        <asp:Label ID="lblTB" runat="server" Text=""></asp:Label>

        <%--<div id="AdminPanel">
            <asp:Repeater ID="rpAdminUpdate" runat="server">
                <ItemTemplate>
                    <a href="UpdatePost.aspx?IDBanTin=<%# Eval("IDBanTin") %> &id=<%# Eval("IDChiTiet")%>">Chỉnh sửa bài viết này</a>
                </ItemTemplate>
            </asp:Repeater>

            <asp:LinkButton ID="btnXoa" runat="server" OnClick="btnXoa_Click">Xóa</asp:LinkButton>
                
        </div><br /><br />--%>

        <%--test ajax--%>
        <div id="AdminPanel">
            <asp:Repeater ID="rpAdminUpdate" runat="server">
                <ItemTemplate>
                    <a href="UpdatePost.aspx?IDBanTin=<%# Eval("IDBanTin") %> &id=<%# Eval("IDChiTiet")%>">Chỉnh sửa bài viết này</a>
                </ItemTemplate>
            </asp:Repeater>
            <%--<asp:ScriptManager ID="ScriptManager" runat="server" />--%>
            <asp:LinkButton ID="btnXoa" runat="server" OnClick="btnXoa_Click">Xóa</asp:LinkButton>

            
                
        </div><br /><br />
        <asp:Repeater ID="rpChiTiet" runat="server">
        <ItemTemplate>
            <h2 id="h2" style="color:#162910"><%# Eval("TieuDe") %></h2>
            <p id="pbd" style="text-align:right;"><i class="Chitiet_info">
                Cập nhật: <%# Eval("NgayDang") %><br />
                Số lần xem: <%# Eval("SoLanXem") %><br />
                <asp:Label ID="lblND" runat="server" Text="">Nguoi dang: <%# Eval("sUserName") %></asp:Label>
                </i>
            </p>
            
            <%# Eval("NoiDung") %>
        </ItemTemplate>
        </asp:Repeater>
        
        <h2 style="color:blue">Xem thêm các tin khác: </h2>
        <ul>
            <asp:Repeater ID="rpRandom" runat="server">
                <ItemTemplate>
                    <li><a href="ChiTiet.aspx?IDBanTin=<%# Eval("IDBanTin") %> &id=<%# Eval("IDChiTiet") %>"><%# Eval("TieuDe") %></a></li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</asp:Content>
