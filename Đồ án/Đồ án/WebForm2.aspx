<%@ Page Title="" Language="C#" MasterPageFile="~/phong12.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Đồ_án.WebForm2" %>

<%@ Register Src="~/ucgiay.ascx" TagPrefix="uc1" TagName="ucgiay" %>
<%@ Register Src="~/UC/ucslider.ascx" TagPrefix="uc1" TagName="ucslider" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
    <uc1:ucslider runat="server" ID="ucslider" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucgiay runat="server" ID="ucgiay" />
</asp:Content>
