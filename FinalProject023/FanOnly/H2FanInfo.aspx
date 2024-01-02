<%@ Page Title="FanInfo - H2TOWN&STORE" Language="C#" MasterPageFile="~/H2Entertainment.Master" AutoEventWireup="true" CodeBehind="H2FanInfo.aspx.cs" Inherits="FinalProject023.FanOnly.H2FanInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style13 {
            font-family: "맑은 고딕";
            color: #2B2E3E;
            text-align: center;
            background-color: #FDEDF1;
        }
        .auto-style14 {
            width: 226px;
        }
        .auto-style15 {
            text-align: center;
            font-family: "맑은 고딕";
            font-size: large;
        }
        .auto-style17 {
            font-family: "noto Sans";
            font-size: 25pt;
            font-weight: normal;
            color: #2D3043;
            text-align: center;
        }
        .auto-style18 {
            text-align: center;
        }
        .auto-style19 {
            font-family: "맑은 고딕";
        }
        .auto-style20 {
            color: #CC0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style18">
        <div class="auto-style17">
            <strong>Check Fan Info</strong></div>
        <hr style="border: thin solid #2D3043; background-color: #2D3043;" />
        <div class="auto-style18">
        <br />
        <span class="auto-style15"><span class="auto-style20">•</span> </span><span class="auto-style19"><strong>FanClub</strong> 회원명 : </span>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="fName" DataValueField="fId" OnDataBound="DropDownList1_DataBound">
        </asp:DropDownList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" ProviderName="<%$ ConnectionStrings:master.ProviderName %>" SelectCommand="SELECT [fName], [fId] FROM [Fan_Info]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="fId" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" Width="623px" HorizontalAlign="Center">
            <EditItemTemplate>
                fName:
                <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                <br />
                fId:
                <asp:Label ID="fIdLabel1" runat="server" Text='<%# Eval("fId") %>' />
                <br />
                fPassword:
                <asp:TextBox ID="fPasswordTextBox" runat="server" Text='<%# Bind("fPassword") %>' />
                <br />
                fBirth_Y:
                <asp:TextBox ID="fBirth_YTextBox" runat="server" Text='<%# Bind("fBirth_Y") %>' />
                <br />
                fEmail:
                <asp:TextBox ID="fEmailTextBox" runat="server" Text='<%# Bind("fEmail") %>' />
                <br />
                fPhone:
                <asp:TextBox ID="fPhoneTextBox" runat="server" Text='<%# Bind("fPhone") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="업데이트" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <EmptyDataTemplate>
                일치하는 FanClub 데이터가 없습니다.
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#2D3043" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                <div class="auto-style15">
                    FanClub 회원 정보
                </div>
            </HeaderTemplate>
            <InsertItemTemplate>
                fName:
                <asp:TextBox ID="fNameTextBox" runat="server" Text='<%# Bind("fName") %>' />
                <br />
                fId:
                <asp:TextBox ID="fIdTextBox" runat="server" Text='<%# Bind("fId") %>' />
                <br />
                fPassword:
                <asp:TextBox ID="fPasswordTextBox" runat="server" Text='<%# Bind("fPassword") %>' />
                <br />
                fBirth_Y:
                <asp:TextBox ID="fBirth_YTextBox" runat="server" Text='<%# Bind("fBirth_Y") %>' />
                <br />
                fEmail:
                <asp:TextBox ID="fEmailTextBox" runat="server" Text='<%# Bind("fEmail") %>' />
                <br />
                fPhone:
                <asp:TextBox ID="fPhoneTextBox" runat="server" Text='<%# Bind("fPhone") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="삽입" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="취소" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="auto-style8" style="border-collapse: collapse">
                    <tr>
                        <td class="auto-style13" style="padding: 10px; border: 0.5px solid #2D3043;">아이디</td>
                        <td style="padding: 10px; border: 0.5px solid #2D3043;" class="auto-style14">
                            <asp:Label ID="fIdLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("fId") %>' />
                        </td>
                        <td class="auto-style13" style="padding: 10px; border: 0.5px solid #2D3043;">생&nbsp; 년</td>
                        <td style="padding: 10px; border: 0.5px solid #2D3043;">
                            <asp:Label ID="fBirth_YLabel" runat="server" CssClass="auto-style12" Text='<%# Bind("fBirth_Y") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13" style="padding: 10px; border: 0.5px solid #2D3043;">이&nbsp; 름</td>
                        <td style="padding: 10px; border: 0.5px solid #2D3043;" class="auto-style14">
                            <asp:Label ID="fNameLabel" runat="server" CssClass="auto-style12" Text='<%# Bind("fName") %>' />
                        </td>
                        <td class="auto-style13" style="padding: 10px; border: 0.5px solid #2D3043;">이메일</td>
                        <td style="padding: 10px; border: 0.5px solid #2D3043;">
                            <asp:Label ID="fEmailLabel" runat="server" CssClass="auto-style12" Text='<%# Bind("fEmail") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13" style="padding: 10px; border: 0.5px solid #2D3043;">암&nbsp; 호</td>
                        <td style="padding: 10px; border: 0.5px solid #2D3043;" class="auto-style14">
                            <asp:Label ID="fPasswordLabel" runat="server" CssClass="auto-style12" Text='<%# Bind("fPassword") %>' />
                        </td>
                        <td class="auto-style13" style="padding: 10px; border: 0.5px solid #2D3043;">연락처</td>
                        <td style="padding: 10px; border: 0.5px solid #2D3043;">
                            <asp:Label ID="fPhoneLabel" runat="server" CssClass="auto-style12" Text='<%# Bind("fPhone") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" ProviderName="<%$ ConnectionStrings:master.ProviderName %>" SelectCommand="SELECT * FROM [Fan_Info] WHERE ([fId] = @fId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="fId" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
