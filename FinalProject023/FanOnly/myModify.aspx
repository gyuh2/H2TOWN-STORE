<%@ Page Title="Modify - H2TOWN&STORE" Language="C#" MasterPageFile="~/H2Entertainment.Master" AutoEventWireup="true" CodeBehind="myModify.aspx.cs" Inherits="FinalProject023.FanOnly.myModify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 650px;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            width: 580px;
            height: 1px;
        }
        .auto-style10 {
            font-family: "noto Sans";
            color: #2D3043;
            font-size: medium;
        }
        .auto-style11 {
            font-family: "noto Sans";
            color: #FFFFFF;
            font-size: medium;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style15 {
            color: #CC0000;
            font-family: "맑은 고딕";
            font-size: small;
        }
        .auto-style17 {
            height: 100px;
        }
        .auto-style19 {
            font-family: "맑은 고딕";
        }
        .auto-style20 {
            font-size: small;
            font-family: "맑은 고딕";
        }
        .auto-style21 {
            font-family: "noto Sans";
            font-size: 30pt;
            font-weight: normal;
            color: #2D3043;
            text-align: center;
        }
        .auto-style22 {
            color: #CC0000;
            font-family: "맑은 고딕";
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2 class="auto-style21"><strong>Edit</strong></h2>
        <table align="center" cellpadding="2" class="auto-style8" style="border: 0.5px solid #CCCCCC">
            <tr>
                <td colspan="2" style="padding-top: 30px; height: 70px;" class="auto-style17"><span class="auto-style19"><strong>&nbsp;&nbsp;&nbsp;&nbsp; 기본정보</strong></span><br /><hr class="auto-style9" noshade="noshade" style="background-color: #3D435F" /></td>
            </tr>
            <tr>
                <td style="padding-left: 30px" class="auto-style20"><span class="auto-style15"><strong>•</strong></span><span class="auto-style20"><strong> 이름</strong></span></td>
                <td style="padding-top: 10px; padding-left: 10px; ">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 30px" class="auto-style20"><span class="auto-style15"><strong>•</strong></span><span class="auto-style20"><strong> 아이디</strong></span></td>
                <td style="padding-top: 10px; padding-left: 10px; ">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 30px" class="auto-style20"><span class="auto-style15"><strong>•</strong></span><span class="auto-style20"><strong> 비밀번호</strong></span></td>
                <td style="padding-top: 10px; padding-left: 10px;">
                    <asp:TextBox ID="TextBox3" runat="server" Width="350px" TextMode="Password"></asp:TextBox>
                &nbsp;<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* 필수 정보입니다." ControlToValidate="TextBox3" CssClass="auto-style15" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="* 4자리 숫자로 입력하세요." ControlToValidate="TextBox3" CssClass="auto-style15" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 30px" class="auto-style20"><span class="auto-style15"><strong>•</strong></span><span class="auto-style20"><strong> 비밀번호 확인</strong></span></td>
                <td style="padding-top: 10px; padding-left: 10px;">
                    <asp:TextBox ID="TextBox4" runat="server" Width="350px" TextMode="Password"></asp:TextBox>
                &nbsp;<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="* 필수 정보입니다." ControlToValidate="TextBox4" CssClass="auto-style15" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="* 비밀번호가 일치하지 않습니다." ControlToCompare="TextBox3" ControlToValidate="TextBox4" CssClass="auto-style15"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 30px;" class="auto-style20"><span class="auto-style15"><strong>•</strong></span><span class="auto-style20"><strong> 출생년도</strong></span></td>
                <td style="padding-left: 10px; padding-top: 10px;">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 30px" class="auto-style20"><span class="auto-style15"><strong>•</strong></span><span class="auto-style20"><strong> 이메일</strong></span></td>
                <td style="padding-left: 10px; padding-top: 10px;">
                    <asp:TextBox ID="TextBox6" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 30px" class="auto-style20"><span class="auto-style15"><strong>•</strong></span><span class="auto-style20"><strong> 전화번호</strong></span></td>
                <td style="padding-left: 10px; padding-top: 10px;">
                    <asp:TextBox ID="TextBox7" runat="server" Width="350px"></asp:TextBox>
                &nbsp;<br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* 필수 정보입니다." ControlToValidate="TextBox7" CssClass="auto-style15"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style12" style="height: 100px">
                    <asp:Button ID="Button9" runat="server" Text="CANCEL" BackColor="#FDFDFD" BorderStyle="Groove" CssClass="auto-style10" Width="250px" Height="50px" BorderWidth="1px" OnClick="Button9_Click" CausesValidation="False" />
                    &nbsp;&nbsp;<asp:Button ID="Button10" runat="server" Text="APPLY" BackColor="#3D435F" BorderStyle="Groove" CssClass="auto-style11" Width="250px" Height="50px" BorderWidth="1px" OnClick="Button10_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style12" style="height: 50px;">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style22"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
