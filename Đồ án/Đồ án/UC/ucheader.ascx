<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucheader.ascx.cs" Inherits="Đồ_án.UC.ucheader" %>
<link href="../Style.css" rel="stylesheet" />
<style type="text/css">
    header{
        height:200px;
    } 
    div#logo{
        display:table-cell;
        width:350px;
    }
    div#mar{
        margin-top: 50px;
        display:table-cell;
        width: 500px;
        float:right;
    }
    div#1{
        display:table-row;
    }
    div#dn{
	margin-top:100px;
}
</style>
<header>
       <div id="logo"><img src="../images/images1.png" title="Trang chủ"/></div>
       <div id="dn"> 
           <img src="../images/icons8-login-64.png" title="Đăng nhập">
           <a href="../dangnhap.aspx" id="aDangNhap" runat="server"><font color="#0000FF">Đăng nhập</font></a>
           <asp:Label ID="lbTenDN" CssClass="tendangnhap" runat="server" Text="Tên đăng nhập"></asp:Label>
           <a> | </a>
           <a href="../dangky.aspx" runat="server" id="aDangKy"><font color="#0000FF">Đăng ký</font></a>
           <asp:LinkButton ID="lblDangXuat" runat="server" OnClick="lblDangXuat_Click"><font color="#0000FF">Đăng xuất</font></asp:LinkButton>
           <a href="#"><img src="../images/Giohang.gif" title="Giỏ hàng"  /><font color="#0000FF">Giỏ hàng (<span>Trống<span>)</a>
       </div> 
    </header>
    
    <nav>
        <div id="subnav">
            <ul>
                <li><a href="WebForm2.aspx">TRANG CHỦ</a></li>
                
                <li><a href="../cachchonsize.aspx">CÁCH CHỌN SIZE</a></li>
            </ul>
          
        </div> 
    </nav>