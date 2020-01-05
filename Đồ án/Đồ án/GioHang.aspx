<%@ Page Title="" Language="C#" MasterPageFile="~/phong12.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="Đồ_án.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>THÔNG TIN VỀ GIỎ HÀNG CỦA BẠN</p>
    <asp:GridView ID="gvGiohang" runat="server" AutoGenerateColumns="False" DataKeyNames="MaGiay" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvGiohang_SelectedIndexChanged" Width="721px" OnRowCommand="gvGiohang_RowCommand">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="Mã giày" DataField="MaGiay" />
            <asp:BoundField HeaderText="Tên giày" DataField="TenGiay" />
            <asp:BoundField HeaderText="Đơn giá" DataField="DonGia" />
            <asp:TemplateField HeaderText="Số lượng">
                <ItemTemplate>
                    <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Thành tiền" DataField="ThanhTien" />
            <asp:ButtonField CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" ButtonType="Image" Text="X" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
     Tổng cộng: <asp:Label runat="server" id="lbTongThanhTIen"></asp:Label>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Button ID="btTieptucmua" runat="server" Text="Tiếp tục mua" OnClick="btTieptucmua_Click" /></td>
                <td>
                    <asp:Button ID="btXoagiohang" runat="server" Text="Xóa giỏ hàng" OnClick="btXoagiohang_Click" /></td>              
                <td>
                    <asp:Button ID="btDathang" runat="server" Text="Đặt hàng" OnClick="btDathang_Click" /></td>
            </tr>
            <tr>
                <td colspan="4"><asp:Label ID="lbThongBaoLoi" runat="server"></asp:Label></td>
            </tr>
        </table>
</asp:Content>
