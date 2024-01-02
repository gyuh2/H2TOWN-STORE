<%@ Page Title="Goods - H2TOWN&STORE" Language="C#" MasterPageFile="~/H2Entertainment.Master" AutoEventWireup="true" CodeBehind="H2Goods.aspx.cs" Inherits="FinalProject023.FanOnly.H2Goods" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-family: "noto Sans";
            font-size: 30pt;
            font-weight: normal;
            color: #2D3043;
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            font-family: "맑은 고딕";
            color: #2D3043;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style9">
        <h2 class="auto-style8"><strong>H2&#39;S P!CK</strong></h2>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="gID" DataSourceID="SqlDataSource1" PageSize="10" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" HorizontalAlign="Center" Width="1000px" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="gID" HeaderText="상품번호" ReadOnly="True" SortExpression="gID" />
                <asp:BoundField DataField="gName" HeaderText="상품명" SortExpression="gName" />
                <asp:BoundField DataField="gCategory" HeaderText="분류" SortExpression="gCategory" />
                <asp:BoundField DataField="gPrice" HeaderText="가격" SortExpression="gPrice" />
                <asp:BoundField DataField="gPoint" HeaderText="포인트" SortExpression="gPoint" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#2D3043" Font-Bold="True" ForeColor="White" BorderColor="#2D3043" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#EFD4D6" Font-Bold="True" ForeColor="#2D3043" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" ProviderName="<%$ ConnectionStrings:master.ProviderName %>" SelectCommand="SELECT * FROM [Goods]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style10"></asp:Label>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
