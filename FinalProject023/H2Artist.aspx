<%@ Page Title="Artist - H2TOWN&STORE" Language="C#" MasterPageFile="~/H2Entertainment.Master" AutoEventWireup="true" CodeBehind="H2Artist.aspx.cs" Inherits="FinalProject023.H2Artist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            color: #CC0000;
            font-family: "맑은 고딕";
            font-size: small;
        }

        .auto-style20 {
            font-size: small;
            font-family: "맑은 고딕";
        }

        .auto-style21 {
            font-family: "noto Sans";
            color: #FFFFFF;
        }

        .auto-style22 {
            font-family: "noto Sans";
            font-size: 25pt;
            font-weight: normal;
            color: #2D3043;
            text-align: center;
        }
        .auto-style23 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style23">
        <div class="auto-style22">
            <strong>Artist Profile</strong></div>
        <hr style="border: thin solid #2D3043; background-color: #2D3043;" />
        <div class="auto-style23">
        <span class="auto-style15"><strong>&nbsp;<br />
        •</strong></span><span class="auto-style20"><strong> 이름 : </strong>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;</span><asp:Button ID="Button9" runat="server" BackColor="#3D435F" BorderStyle="Groove" BorderWidth="1px" CssClass="auto-style21" Height="30px" Text="Search" OnClick="Button9_Click" />
        <br />
        <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        </div>
    </div>
</asp:Content>
