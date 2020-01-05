<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucadminheader.ascx.cs" Inherits="Đồ_án.UC.ucadminheader" %>
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
       <div id="logo"><img src="../images/images.png" title="Trang chủ"/></div>
       <div id="dn"> 
           <img src="../images/icons8-login-64.png" title="Đăng nhập">
           <a href="../DangnhapAdmin.aspx" id="aDangNhap" runat="server"><font color="#0000FF">Đăng nhập</font></a>
           <asp:Label ID="lbTenDN" CssClass="tendangnhap" runat="server" Text="Tên đăng nhập"></asp:Label>
           <a> | </a>
           
           <asp:LinkButton ID="lblDangXuat" runat="server" OnClick="lblDangXuat_Click"><font color="#0000FF">Đăng xuất</font></asp:LinkButton>
           
       </div> 
    </header>
    
    <nav>
        <div id="subnav">
            <ul>
                <li><a href="WebForm2.aspx">TRANG CHỦ</a></li>
                <li><a href="Gioithieu.html" target="_blank">GIỚI THIỆU</a></li>
                <li><a href="../cachchonsize.aspx">CÁCH CHỌN SIZE</a></li>
            </ul>
           <div>
                <input  type="text" name="tsearch" placeholder="Hãy nhập tên giày cần tìm ..." id="tsearch">
                <input type="submit" value="Tìm giày" title="Tìm giày">
            </div>
        </div> 
    </nav>