<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmID.aspx.cs" Inherits="FinalProject023.ConfirmID" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            color: #FFFFFF;
            font-family: "맑은 고딕";
        }
        .auto-style3 {
            color: #2D3043;
        }
        .auto-style4 {
            width: 390px;
            height: 180px;
        }
        .auto-style5 {
            font-family: "맑은 고딕";
            font-size: small;
            color: #CC0000;
        }
        .auto-style6 {
            font-family: "맑은 고딕";
            font-size: x-large;
        }
        .auto-style7 {
            width: 123px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style4">
                <tr>
                    <td colspan="2" class="auto-style6" style="border-bottom-style: solid; border-width: thin; border-color: #3D435F">⁛ 아이디 중복확인</td>
                </tr>
                <tr>
                    <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="240px"></asp:TextBox>
                    </td>
                    <td class="auto-style7"><asp:Button ID="Button1" runat="server" Text="중복확인" OnClick="Button1_Click" BackColor="#3D435F" BorderStyle="Groove" BorderWidth="1px" CssClass="auto-style2" Height="35px" />
                    </td>
                </tr>
                <tr>
                    <td>
            <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>
                        </strong></td>
                    <td class="auto-style7"><asp:Button ID="Button2" runat="server" Text="사 용" OnClick="Button2_Click" BackColor="#3D435F" BorderStyle="Groove" BorderWidth="1px" CssClass="auto-style2" Height="35px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="* 아이디를 입력해주세요"
                ForeColor="#FF3300" CssClass="auto-style5"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                ControlToValidate="TextBox1" ErrorMessage="* 영문, 숫자 4~10자리로 입력해주세요"
                ForeColor="Red" ValidationExpression="[0-9a-zA-Z]{4,10}" CssClass="auto-style5"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
