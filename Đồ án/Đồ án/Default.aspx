<%@ Page Title="" Language="C#" MasterPageFile="~/phong12.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Đồ_án.Default" %>

<%@ Register Src="~/ucgiay.ascx" TagPrefix="uc1" TagName="ucgiay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucgiay runat="server" ID="ucgiay" />
</asp:Content>
