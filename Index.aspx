<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebBasic.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Tin mới nhất</h1>
    <div id="ndcontent">
        <ul>
            <asp:Repeater ID="rpChiTiet" runat="server">
                <ItemTemplate>
                    <li>                       
                        <a id="ndcontent_img" href="ChiTiet.aspx?IDBanTin=<%# Eval("IDBanTin") %> &id=<%# Eval("IDChiTiet") %>"><img src="Images/24hnews.jpg" alt="Image"/></a>                
                        <div>
                            <a id="ndcontent_link" href="ChiTiet.aspx?IDBanTin=<%# Eval("IDBanTin") %> &id=<%# Eval("IDChiTiet") %> &nd=<%# Eval("sUserName") %>"><%# Eval("TieuDe") %></a>
                            <%--<asp:Label ID="ndcontent_trichdan" CssClass="trichdan" runat="server" Text=""><%# Eval("TrichDan") %></asp:Label>--%>
                        </div>                           
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
        Trang
        <div id="divPaging" style="overflow: hidden;">
            <asp:Repeater ID="repeaterPaging" runat="server" OnItemCommand="repeaterPaging_ItemCommand" OnItemDataBound="repeaterPaging_ItemDataBound">
                <ItemTemplate>                    
                    <asp:LinkButton ID="btnPage" CssClass="paging"  
                        CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                        runat="server"> <%# Container.DataItem %>
                    </asp:LinkButton>
               </ItemTemplate>
            </asp:Repeater>
        </div>        
    </div>
    <%--<script type="text/javascript">
        function click() {
            //document.getElementById('foo').addEventListener('click', function (e) {
            //    var img = document.createElement('img');
            //    img.setAttribute('src', 'http://blog.stackoverflow.com/wp-content/uploads/stackoverflow-logo-300.png');
            //    e.target.appendChild(img);
            //});
            alert("helo");
        };
    </script>--%>
</asp:Content>

