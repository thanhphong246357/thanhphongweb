<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucfooter.ascx.cs" Inherits="Đồ_án.UC.ucfooter" %>
<link href="../Style.css" rel="stylesheet" />
<style type="text/css">
    footer{
            width:100%;
            margin-top: 80px;
            background-image:url("../images/logoo.jpg");
            height:300px;
        }
        footer>table{
            color:snow;
            margin-left:10px;
            width: 1320px;
            height:200px;
        }
        footer>table>tr>td>a:visited{
            color:snow;
        }
        h2{
            text-align:center;
        }
        .ftlogo{
            width:100px;
            height:100px;
            border-radius:50px;
        }
        .fthinh{
            width:20px;
            height:20px;
        }
        .fthinh1{
            width:40px;
            height:40px;
        }
        .ftduongthang{
            width:90%;
        }
</style>
<footer>
    <footer>
    <table>
        <tr>
            
            <td>
                <h2>LIÊN HỆ</h2>
                <hr class="ftduongthang"/>
            </td>
            <td>
                <h2>HỖ TRỢ KHÁCH HÀNG</h2>
                <hr class="ftduongthang">
            </td>
            <td>
                <h2>KẾT NỐI VỚI SHOP</h2>
                <hr class="ftduongthang"/>
            </td>
            <td rowspan="2" align="center" style="font-size: 20px; font-weight:bold;">
                <asp:Image CssClass="ftlogo" ID="Image6" runat="server" ImageUrl="~/images/images1.png"></asp:Image>
                <br />SPORT.VN
               
            </td>
        </tr>
        <tr>   
            <td>
                <asp:Image CssClass="fthinh" ID="Image7" runat="server" ImageUrl="~/images/diachi.png"></asp:Image> Địa chỉ:
                <br /><asp:Image CssClass="fthinh" ID="Image8" runat="server" ImageUrl="~/images/phone.png"></asp:Image> 0902456897<br />
                <br /><asp:Image CssClass="fthinh" ID="Image9" runat="server" ImageUrl="~/images/tn.png"></asp:Image> Sport@gmail.com
            </td>
            <td>
                &emsp;<a href="cachchonsize">>&emsp;Cách chọn size</a>
                
            </td>
            <td align="center">
                <asp:Image CssClass="fthinh1" ID="Image10" runat="server" ImageUrl="~/Images/fb.jpg"></asp:Image>
                <asp:Image CssClass="fthinh1" ID="Image11" runat="server" ImageUrl="~/Images/ins.jpg"></asp:Image>
                <asp:Image CssClass="fthinh1" ID="Image12" runat="server" ImageUrl="~/Images/st.jpg"></asp:Image>
            </td>
        </tr>
    </table>
</footer>
</footer>