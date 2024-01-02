<%@ Page Title="Login - H2TOWN&STORE" Language="C#" MasterPageFile="~/H2Entertainment.Master" AutoEventWireup="true" CodeBehind="H2Login.aspx.cs" Inherits="FinalProject023.H2Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            font-weight: normal;
            font-family: "맑은 고딕";
            font-size: xx-large;
            text-align: center;
        }

        .auto-style7 {
            width: 500px;
            background-color: #FFFFFF;
        }

        .auto-style8 {
            height: 80px;
            width: 333px;
        }

        .auto-style9 {
            font-family: "맑은 고딕";
        }

        .auto-style10 {
            height: 80px;
            font-family: "맑은 고딕";
            color: #2D3043;
            font-size: medium;
        }

        .auto-style11 {
            font-family: "noto Sans";
            color: #FFFFFF;
            font-size: medium;
        }

        .auto-style12 {
            height: 48px;
            text-align: center;
        }

        .auto-style13 {
            font-family: "맑은 고딕";
            color: #26293D;
        }

        .auto-style14 {
            width: 333px;
        }

        .auto-style16 {
            font-weight: normal;
            font-family: "noto Sans";
            text-align: center;
            color: #2D3043;
            font-size: 30pt;
        }

        .auto-style17 {
            font-family: "맑은 고딕";
            color: #2D3043;
            font-size: medium;
        }

        .auto-style18 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2 class="auto-style16"><strong>Login</strong></h2>
    </div>
    <table align="center" cellpadding="2" class="auto-style7" style="border: 0.5px solid #CCCCCC">
        <tr>
            <td class="auto-style10" style="padding-left: 30px; padding-top: 10px;">ID</td>
            <td class="auto-style8" style="padding-top: 10px; padding-left: 10px">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style13" Width="305px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17" style="padding-left: 30px; padding-top: 10px;">PASSWORD</td>
            <td style="padding-top: 10px; padding-left: 10px" class="auto-style14">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style13" Width="305px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="padding: 10px">&nbsp;</td>
            <td style="padding: 10px" class="auto-style14">
                <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style17" Text=" 로그인 상태 유지" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12" colspan="2" style="padding: 10px 0px 10px 0px">
                <asp:Button ID="Button1" runat="server" BackColor="#3D435F" BorderStyle="Groove" CssClass="auto-style11" Text="LOGIN" Width="450px" Height="50px" OnClick="Button1_Click" BorderWidth="1px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12" colspan="2" style="padding: 20px 10px 20px 10px">
                <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" CssClass="auto-style18"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
