<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucleft.ascx.cs" Inherits="Đồ_án.UC.ucleft" %>
<style type="text/css">
    aside#left > div > p {
        background-color:#ff0000;

    }
</style>
<aside id="left">
                <div>
                    <p> GIÀY THEO LOẠI SÂN THI ĐẤU </p>
                    <p>
                        <asp:GridView ID="gvLoaiSan" runat="server"  ShowHeader="False" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <table style="width:100%;">
                                            <tr>
                                                <td>
                                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/icon_list.jpg" />
                                                </td>
                                                <td>
                                                    <asp:HyperLink ID="hbTenSan" runat="server" NavigateUrl='<%# "../Giaytheoloaisanthidau.aspx?MaSan=" + Eval("MaSan") %>' Text='<%# Eval("TenSan") %>'></asp:HyperLink>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </p>
               </div>
               <div>
                   <p>GIÀY THEO NHÀ SẢN XUẤT </p>
                   <p>
                       <asp:GridView ID="gvNSX" runat="server" ShowHeader="False" AutoGenerateColumns="False">
                           <Columns>
                               <asp:TemplateField>
                                   <ItemTemplate>
                                       <table style="width:100%;">
                                           <tr>
                                               <td>
                                                   <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/icon_list.jpg" />
                                               </td>
                                               <td>
                                                   <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "../Giaytheonhasanxuat.aspx?maNSX="+Eval("MaNSX") %>' Text='<%# Eval("TenNSX") %>'></asp:HyperLink>
                                               </td>                                         
                                           </tr>                                 
                                       </table>
                                   </ItemTemplate>
                               </asp:TemplateField>
                           </Columns>
                       </asp:GridView>
                   </p>
               </div>
    </aside>