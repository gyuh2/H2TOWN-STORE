<%@ Page Title="H2TOWN&STORE" Language="C#" MasterPageFile="~/H2Entertainment.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalProject023.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
        }
    .auto-style9 {
        font-size: 25pt;
        font-family: "Noto Sans";
        color: #2D3043;
            text-align: center;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            font-family: "맑은 고딕";
        }
        .auto-style12 {
            font-family: "맑은 고딕";
            font-size: small;
        }
    .auto-style13 {
        font-family: "맑은 고딕";
        font-size: small;
        color: #CC0000;
    }
    .auto-style14 {
            color: #E8A1A0;
            font-size: large;
        }
        .auto-style15 {
            font-family: "맑은 고딕";
            font-size: large;
        }
        .auto-style16 {
            font-size: large;
        }
    .auto-style17 {
        color: #E8A1A0;
        font-size: x-large;
    }
    .auto-style18 {
        font-size: x-large;
    }
    .auto-style19 {
        font-family: "맑은 고딕";
        font-size: medium;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style8">
        <div class="auto-style9"><strong>NEW RELEASE</strong></div><br />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Middle" ImageUrl="~/Images/IVE.jpg" OnClick="ImageButton1_Click" ToolTip="컴백한 아티스트를 만나보세요!" />
        <br />
        &nbsp;&nbsp;
        <br />
        <hr style="border: 0.5px solid #CCCCCC; background-color: #2D3043;" />
        <span class="auto-style11"><strong>
        <span class="auto-style14">
        <br />
        </span><span class="auto-style17">❤</span></strong><span class="auto-style18"><strong>All about Your Artist</strong></span><span class="auto-style17"><strong>❤</strong></span><span class="auto-style16"> 
        <br />
        </span> </span> <br class="auto-style15" />
        <span class="auto-style19">내가 좋아하는 아티스트의 정보와 굿즈를 동시에 만날 수 있는 웹사이트</span> 
        <br />
        <br />
        <hr style="border: 0.5px solid #CCCCCC; background-color: #2D3043;" />
        <br />
        <div class="auto-style10">
            <span class="auto-style11"><strong>이용 안내<br />
            </strong></span><br class="auto-style11" />
            <span class="auto-style12">회원가입과 동시에 H2TOWN의 회원인 FAMILY가 되어 아티스트의 정보 및 각종 굿즈 구매 등을 이용하실 수 있습니다.</span><br class="auto-style12" />
            <span class="auto-style12">비회원의 경우, 아티스트 정보만 확인하실 수 있습니다. </span> <br class="auto-style12" />
            <span class="auto-style13">※ 단, 14세 미만은 회원가입이 불가능합니다.</span><br />
            <br /></div>
    </div>
</asp:Content>
