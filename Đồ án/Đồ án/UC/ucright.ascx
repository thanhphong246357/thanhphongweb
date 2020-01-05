<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucright.ascx.cs" Inherits="Đồ_án.UC.ucright" %>
<link href="../hinh.css" rel="stylesheet" />
<aside id="right">
 				<div id="sachbannhieu">
                    <p>GIÀY BÁN NHIỀU</p>
                     <marquee direction="up" scrollamount="3" scrolldelay="100" onMouseMove="stop()" onMouseOut="start()">
                    <p>
                        <asp:GridView ID="gvGiayBNN" runat="server" ShowHeader="False"  AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <table style="width:100%;">
                                            <tr>
                                                <td>
                                                    <asp:Image CssClass="hinh" ID="Image1" runat="server" ImageUrl='<%# "../images/sach/"+Eval("HinhMinhHoa") %>' />
                                                </td>
                                                <td>
                                                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "../chitietgiay.aspx?MaGiay="+Eval("MaGiay") %>' Text='<%# Eval("TenGiay") %>'></asp:HyperLink>
                                                </td>
                                                
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        </p>
                        </marquee>
                    
                </div>