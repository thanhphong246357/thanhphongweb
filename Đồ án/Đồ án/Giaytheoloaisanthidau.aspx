<%@ Page Title="" Language="C#" MasterPageFile="~/phong12.Master" AutoEventWireup="true" CodeBehind="Giaytheoloaisanthidau.aspx.cs" Inherits="Đồ_án.Giaytheoloaisanthidau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="hinh.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="sachmoi">
                            <p>Giày theo loại sân thi đấu:<asp:Label ID="lbTenCD" ></asp:Label></p>
        <asp:DataList ID="dtlSach" runat="server" OnSelectedIndexChanged="dtlSach_SelectedIndexChanged" RepeatColumns="2">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>                 
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "../Chitietgiay.aspx?MaGiay="+Eval("MaGiay") %>' Text='<%# Eval("TenGiay") %>'></asp:HyperLink>
                        </td>
                        <td>
                            <asp:Image CssClass="hinh" ID="Image1" runat="server" ImageUrl='<%# "../images/sach/"+ Eval("HinhMinhHoa") %>' />
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
</asp:Content>
