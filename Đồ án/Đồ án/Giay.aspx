<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Giay.aspx.cs" Inherits="Đồ_án.Giay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mid">
        <fieldset>
            <h1>DANH SÁCH GIÀY</h1>
            <asp:HyperLink CssClass="link" ID="HyperLink1" NavigateUrl="Themgiay.aspx" runat="server">Thêm mới</asp:HyperLink>
            <asp:GridView CssClass="gv" ID="gvGiay" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaGiay" ForeColor="#333333" GridLines="None" OnRowCommand="gvGiay_RowCommand" AllowPaging="true" PageSize="10" OnPageIndexChanging="gvGiay_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaGiay" HeaderText="Mã Giày" />
                    <asp:BoundField DataField="TenGiay" HeaderText="Tên Giày" />
                    <asp:BoundField DataField="DonViTinh" HeaderText="Đơn Vị Tính" />
                    <asp:BoundField DataField="DonGia" HeaderText="Đơn Giá" />
                    <asp:BoundField DataField="NgayCapNhat" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Ngày Cập Nhật" />
                    <asp:BoundField DataField="SoLuongBan" HeaderText="Số Lượng Bán" />
                    <asp:BoundField DataField="SoLuongXem" HeaderText="Số Lần Xem" />
                    <asp:ButtonField ButtonType="Image" CommandName="Xoa" HeaderText="Xóa" ImageUrl="~/Images/Delete.jpg" />
                    <asp:TemplateField HeaderText="Sửa">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/Edit.png" NavigateUrl='<%# "../Suagiay.aspx?Ma="+Eval("MaGiay") %>'>HyperLink</asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" BorderStyle="Inset" />
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
