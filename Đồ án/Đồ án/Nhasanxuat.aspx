<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Nhasanxuat.aspx.cs" Inherits="Đồ_án.Nhasanxuat" %>

    <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mid">
        <fieldset>
            <h1>DANH SÁCH NHÀ SẢN XUẤT</h1>
            <asp:HyperLink CssClass="link" ID="HyperLink1" NavigateUrl="ThemNSX.aspx" runat="server">Thêm mới</asp:HyperLink>
            <asp:GridView CssClass="gv" ID="gvNhasanxuat" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaNSX" ForeColor="#333333" GridLines="None" OnRowCommand="gvNhasanxuat_RowCommand" OnRowEditing="gvNhasanxuat_RowEditing" OnRowUpdating="gvNhasanxuat_RowUpdating" OnRowCancelingEdit="gvNhasanxuat_RowCancelingEdit">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaNSX" HeaderText="Mã NSX" />
                    <asp:BoundField DataField="TenNSX" HeaderText="Tên nhà sản xuất" />
                    <asp:BoundField DataField="DiaChi" HeaderText="Đia chỉ" />
                    <asp:BoundField DataField="DienThoai" HeaderText="Điên thoại" />
                    <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" />
                    <asp:CommandField ControlStyle-ForeColor="Red" CancelText="Hủy" EditText="Sửa" HeaderText="Sửa" UpdateText="Lưu" ShowEditButton="True" />
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
            <asp:Label ID="lbThongBaoLoi" runat="server" Font-Size="15px" ForeColor="Red"></asp:Label>
        </fieldset>
    </div>
    

</asp:Content>
