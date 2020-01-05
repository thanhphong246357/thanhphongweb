<%@ Page Title="" Language="C#" MasterPageFile="~/phong12.Master" AutoEventWireup="true" CodeBehind="cachchonsize.aspx.cs" Inherits="Đồ_án.cachchonsize" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="size">
                            <p>Cách chọn sze:<asp:Label ID="lbTenCD" ></asp:Label></p>
        <asp:DataList ID="dtlsize" runat="server" RepeatColumns="1">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>                 
                        
                        <td>
                            <asp:Image  ID="Image1" Width="740px" Height="740px" runat="server" ImageUrl='<%# "../images/sach/"+ Eval("hinhvd") %>' />
                        </td>
                        
                       
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

