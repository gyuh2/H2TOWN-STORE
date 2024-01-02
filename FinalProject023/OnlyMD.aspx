<%@ Page Title="OnlyMD - H2TOWN&STORE" Language="C#" MasterPageFile="~/H2Entertainment.Master" AutoEventWireup="true" CodeBehind="OnlyMD.aspx.cs" Inherits="FinalProject023.OnlyMD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 500px;
            background-color: #FFFFFF;
        }
        .auto-style9 {
            width: 400px;
            height: 1px;
        }
        .auto-style15 {
            color: #CC0000;
            font-family: "맑은 고딕";
            }
        .auto-style16 {
            float: right;
        }
         .auto-style20 {
            font-size: small;
            font-family: "맑은 고딕";
        }
        .auto-style21 {
            text-align: center;
        }
        .auto-style22 {
            height: 21px;
            text-align: center;
        }
        .auto-style24 {
            font-family: "맑은 고딕";
        }
        .auto-style25 {
            font-weight: normal;
            font-family: "noto Sans";
            text-align: center;
            color: #2D3043;
            font-size: 30pt;
        }
        .auto-style26 {
            color: #CC0000;
            font-family: "맑은 고딕";
            font-size: medium;
        }
        .auto-style28 {
            color: #3D435F;
            font-family: "맑은 고딕";
        }
        .auto-style29 {
            font-family: "맑은 고딕";
            color: #FFFFFF;
            font-size: medium;
        }
        .auto-style30 {
            font-family: "noto Sans";
            color: #FFFFFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2 class="auto-style25"><strong>ONLY MD</strong></h2>
        <asp:Panel ID="Panel3" runat="server">
            <table align="center" class="auto-style8" style="border: 0.5px solid #CCCCCC">
                <tr>
                    <td colspan="2" style="padding-top: 30px; padding-left: 50px; padding-right: 50px;"><span class="auto-style15"><strong>•</strong></span><strong><span class="auto-style24"> 굿즈</span><span class="auto-style20">&nbsp;&nbsp; </span></strong><span class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style24" OnDataBound="DropDownList1_DataBound" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        &nbsp;</span><span class="auto-style16"><asp:Button ID="Button12" runat="server" BackColor="#3D435F" BorderStyle="Groove" BorderWidth="1px" CssClass="auto-style30" OnClick="Button12_Click" Text="RESET" Width="70px" />
                        </span>
                        <br />
                        <hr class="auto-style9" noshade="noshade" style="background-color: #3D435F" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24" style="padding-left: 50px; padding-top: 30px;">굿즈번호</td>
                    <td style="padding-top: 30px; padding-left: 10px;">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style24"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24" style="padding-left: 50px; padding-top: 10px;">굿즈명</td>
                    <td style="padding-top: 10px; padding-left: 10px">
                        <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24" style="padding-left: 50px; padding-top: 10px;">분류</td>
                    <td style="padding-top: 10px; padding-left: 10px">
                        <asp:TextBox ID="TextBox3" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24" style="padding-left: 50px; padding-top: 10px;">가격</td>
                    <td style="padding-top: 10px; padding-left: 10px">
                        <asp:TextBox ID="TextBox4" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24" style="padding-left: 50px; padding-top: 10px;">포인트</td>
                    <td style="padding-top: 10px; padding-left: 10px">
                        <asp:TextBox ID="TextBox5" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21" colspan="2" style="padding-top: 10px; padding-bottom: 10px; height: 100px;">
                        <asp:Button ID="Button9" runat="server" BackColor="#FDFDFD" BorderStyle="Groove" BorderWidth="1px" CssClass="auto-style29" ForeColor="#2D3043" OnClick="Button9_Click" Text="수정" Height="50px" Width="200px" />
                        &nbsp;<asp:Button ID="Button10" runat="server" BackColor="#3D435F" BorderStyle="Groove" BorderWidth="1px" CssClass="auto-style29" OnClick="Button10_Click" OnClientClick="return confirm('정말로 삭제하시겠습니까?');" Text="삭제" Height="50px" Width="200px" />
                    </td>
                </tr>
            </table>
            <br />
            <div class="auto-style21">
                <strong>
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style28" ForeColor="#3D435F" OnClick="LinkButton1_Click">신상 굿즈 등록 →</asp:LinkButton>
                </strong>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="auto-style26"></asp:Label>
                <br />
                <br />
             </div>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
            <br />
            <table class="auto-style8" align="center" style="border: 0.5px solid #CCCCCC">
                <tr>
                    <td colspan="2" style="padding-top: 30px; padding-left: 50px; padding-right: 50px;">
                        <span class="auto-style15"><strong>•</strong></span><strong><span class="auto-style24"> 신상 굿즈</span>
                            <span class="auto-style20">&nbsp;&nbsp; </span></strong>
                        <span class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</span><br />
                        <hr class="auto-style9" noshade="noshade" style="background-color: #3D435F" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24" style="padding-top: 30px; padding-left: 50px">굿즈번호</td>
                    <td style="padding-top: 30px; padding-left: 10px">
                        <asp:TextBox ID="TextBox6" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 10px; padding-left: 50px" class="auto-style24">굿즈명</td>
                    <td style="padding-top: 10px; padding-left: 10px">
                        <asp:TextBox ID="TextBox7" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 10px; padding-left: 50px" class="auto-style24">분류</td>
                    <td style="padding-top: 10px; padding-left: 10px">
                        <asp:TextBox ID="TextBox8" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 10px; padding-left: 50px" class="auto-style24">가격</td>
                    <td style="padding-top: 10px; padding-left: 10px">
                        <asp:TextBox ID="TextBox9" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="padding-top: 10px; padding-left: 50px" class="auto-style24">포인트</td>
                    <td style="padding-top: 10px; padding-left: 10px">
                        <asp:TextBox ID="TextBox10" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22" colspan="2" style="padding-top: 10px; padding-bottom: 10px; height: 100px;">
                        <asp:Button ID="Button11" runat="server" BackColor="#FDFDFD" BorderStyle="Groove" BorderWidth="1px" CssClass="auto-style23" OnClick="Button11_Click" Text="등록" ForeColor="#2D3043" Height="50px" Width="200px" style="font-family: '맑은 고딕'; font-size: medium; color: #2D3043" />
                        &nbsp;<asp:Button ID="Button13" runat="server" BackColor="#3D435F" BorderStyle="Groove" BorderWidth="1px" CssClass="auto-style23" OnClick="Button13_Click" Text="초기화" Height="50px" Width="200px" style="font-family: '맑은 고딕'; font-size: medium; color: #FFFFFF" />
                    </td>
                </tr>
            </table>
            <br />
            <div class="auto-style21">
                <strong>
                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style28" OnClick="LinkButton2_Click">기존 굿즈 관리 →</asp:LinkButton>
                <br />
                </strong>
                <br />
                <asp:Label ID="Label4" runat="server" CssClass="auto-style15"></asp:Label>
                <br />
                <br />
                </div>
        </asp:Panel>
        <br />
    </div>
</asp:Content>
