<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucgiay.ascx.cs" Inherits="Đồ_án.ucgiay" %>
<link href="Style.css" rel="stylesheet" />
<link href="hinh.css" rel="stylesheet" />
<div id="giay">
    <p>Giày Mới</p>
    <asp:DataList ID="dtlgiay" runat="server"  RepeatColumns="2">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../Chitietgiay.aspx?MaGiay="+Eval("MaGiay") %>' Text='<%# Eval("TenGiay") %>'></asp:HyperLink>
                    </td>
                    <td>
                        <asp:Image CssClass="hinh" ID="Image1" runat="server" ImageUrl= '<%# "../Images/sach/"+ Eval("HinhMinhHoa") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/Chonmua.png" NavigateUrl='<%# "../GioHang.aspx?MaGiay="+Eval("MaGiay") %>'>HyperLink</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</div>