<%@ Page Title="" Language="C#" MasterPageFile="~/phong12.Master" AutoEventWireup="true" CodeBehind="Chitietgiay.aspx.cs" Inherits="Đồ_án.Chitietgiay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type ="text/css">
        .hinh{
        width:150px;
        height:150px;
        transition: transform .2s;
        text-align:center
        }
    </style>
    <asp:DataList ID="dtchitietgiay" runat="server"   >        
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenGiay") %>' ></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td rowspan="3">
                        <asp:Image ID="Image1" Width="200px" Height="200px" runat="server" ImageUrl='<%# "../images/sach/"+Eval("HinhMinhHoa") %>' />
                    </td>
                    <td>
                        
                        <asp:BulletedList ID="BulletedList" runat="server" >
                        </asp:BulletedList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Nhà sản xuất: <asp:Label ID="Label7" runat="server" Text='<%# Eval("TenNSX") %>'></asp:Label>
                    </td>               
                </tr>
                 <tr>
                    <td>
                        Loại sân: <asp:Label ID="Label8" runat="server" Text='<%# Eval("TenSan") %>'></asp:Label>
                     </td>               
                </tr>
                 <tr>
                    <td colspan="2">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                     </td>
                </tr>
                 <tr>
                     <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                     </td>
                </tr>
                 <tr>
                     <td>&nbsp;</td>
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/Chonmua.png"  />
                        
                     </td>
                        
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
