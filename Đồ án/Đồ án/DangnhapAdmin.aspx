<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="DangnhapAdmin.aspx.cs" Inherits="Đồ_án.DangnhapAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <fieldset>
                <table>
                    <tr>
                        <td colspan="3" align="center" size="3" color="red" ><h1>Đăng nhập trước khi sử dụng các chức năng của Admin!</h1></td>
                    </tr>
                    <tr>
                        <td><b>Tên đăng nhập:</b></td>
                        <td id="cot"><asp:TextBox ID="txtTenDN" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tên đăng nhập trống" ControlToValidate="txtTenDN" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td><b>Mật khẩu:</b></td>
                        <td id="cot"><asp:TextBox ID="txtMatKhau" runat="server" Width="100%" TextMode="Password"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mật khẩu trống" ControlToValidate="txtMatKhau" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><asp:Button CssClass="nut" ID="btDangNhap" runat="server" Text="Đăng nhập" OnClick="btDangNhap_Click" /></td>                    </tr>
                    <tr>
                        <td colspan="3"><asp:Label runat="server" ID="lbThongbao" Font-Size="12px" ForeColor="Red"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="3"><asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Font-Size="12px" /></td>
                    </tr>
                </table>
            </fieldset>
        </div>

</asp:Content>
