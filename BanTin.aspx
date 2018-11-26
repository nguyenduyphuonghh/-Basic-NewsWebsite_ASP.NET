<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="BanTin.aspx.cs" Inherits="WebBasic.BanTin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rpIDBanTin" runat="server">
        <ItemTemplate>
            <h1><%# Eval("TieuDe") %></h1>
        </ItemTemplate>
    </asp:Repeater>
    <div id="ndcontent">
        <ul>
            <asp:Repeater ID="rpChiTiet" runat="server">
                <ItemTemplate>
                    <li>                       
                        <a id="ndcontent_img" href="ChiTiet.aspx?IDBanTin=<%# Eval("IDBanTin") %> &id=<%# Eval("IDChiTiet") %>"><img src="Images/sports_banner.png" alt="Image"/></a>                
                        <div>
                            <a id="ndcontent_link" href="ChiTiet.aspx?IDBanTin=<%# Eval("IDBanTin") %> &id=<%# Eval("IDChiTiet") %> &nd=<%# Eval("sUserName") %>"><%# Eval("TieuDe") %></a>
                            <%--<asp:Label ID="ndcontent_trichdan" CssClass="trichdan" runat="server" Text=""><%# Eval("TrichDan") %></asp:Label>--%>
                        </div>                           
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
        <%--<ul>
            <asp:Repeater ID="rpChiTiet" runat="server">
                <ItemTemplate>
                    <li>
                        <a href="ChiTiet.aspx?IDBanTin=<%# Eval("IDBanTin") %> &id=<%# Eval("IDChiTiet") %>"><img src="Images/sports_banner.png" alt="" class="img_thumb" /></a>
                        <a href="ChiTiet.aspx?IDBanTin=<%# Eval("IDBanTin") %> &id=<%# Eval("IDChiTiet") %>"><%# Eval("TieuDe") %></a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul> --%>       
    </div>
</asp:Content>
