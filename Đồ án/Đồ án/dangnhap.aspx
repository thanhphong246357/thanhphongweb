<%@ Page Title="" Language="C#" MasterPageFile="~/phong12.Master" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="Đồ_án.dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Style.css" rel="stylesheet" />
    <form class="hi" action="#" name="dangnhap" method="get">
        <table style="width: 100%;">
            <tr>
                <td align="center" colspan="2">
                    <font size="5" color="#FF0000">XIN MỜI QUÝ KHÁCH ĐĂNG NHẬP</font></td>
               
            </tr>
            <tr>
                <td align="center" style="height: 21px">
                    <font size="2" color="#FF0000">Tên đăng nhập:</font></td>
                <td style="height: 21px">
                    <asp:TextBox ID ="txtTenDangNhap" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDangNhap" ErrorMessage="Chưa nhập tài khoản" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    </td>
                
            </tr>
            <tr>
                <td align="center" style="height: 21px"><font size="2" color="#FF0000">Mật khẩu:</font></td>
              <td style="height: 21px"><asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="Chưa nhập mật khẩu" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2"><asp:Button runat="server" Text="Đăng nhập" ID="btndangnhap" OnClick="dangnhap123" /></td>
                
                
            </tr>

            <tr>
                <td align="center" colspan="2">
                    <a href="https://www.facebook.com/"> Đăng nhập bằng FACEBOOK </a><br />
                    <a href="#" runat="server" >Đổi mật khẩu</a><p><asp:Label ID="lblThongbaoloi" runat="server"></asp:Label></p>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" HeaderText="Chú ý:" />
                </td>
                
                
            </tr>
        </table>
    </form>
</asp:Content>
