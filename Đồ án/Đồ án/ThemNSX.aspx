<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="ThemNSX.aspx.cs" Inherits="Đồ_án.ThemNSX" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="themsach">
        <fieldset>
            <h1>THÊM MỚI NHÀ SẢN XUẤT</h1>
            <table>
                <tr>
                    <td>Mã NSX:</td>
                    <td align="right"><asp:TextBox ID="txtMaNSX" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtMaNSX">không để trống</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Tên NSX:</td>
                    <td align="right"><asp:TextBox ID="txtTenNSX" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtTenNSX">không để trống</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Địa chỉ:</td>
                    <td align="right"><asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtDiaChi">không để trống</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Điện thoại:</td>
                    <td align="right"><asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtDienThoai">không để trống</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td colspan="3" align="center"><asp:Button CssClass="luu" ID="btLuu" runat="server" Text="Lưu" OnClick="btLuu_Click" /></td>                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </fieldset>
    </div>
</asp:Content>
