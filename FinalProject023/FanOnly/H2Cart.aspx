<%@ Page Title="Cart - H2TOWN&STORE" Language="C#" MasterPageFile="~/H2Entertainment.Master" AutoEventWireup="true" CodeBehind="H2Cart.aspx.cs" Inherits="FinalProject023.FanOnly.H2Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            font-family: "noto Sans";
            font-size: 30pt;
            font-weight: normal;
            color: #2D3043;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2 class="auto-style9"><strong>Cart</strong></h2>
        <div class="auto-style8">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="1000px" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" PageSize="5">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="cID" HeaderText="상품번호" ReadOnly="True" SortExpression="cID" />
                    <asp:BoundField DataField="cName" HeaderText="상품명" SortExpression="cName" />
                    <asp:BoundField DataField="cCategory" HeaderText="분류" SortExpression="cCategory" />
                    <asp:BoundField DataField="cPrice" HeaderText="가격" SortExpression="cPrice" />
                    <asp:BoundField DataField="cPoint" HeaderText="포인트" SortExpression="cPoint" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#2D3043" Font-Bold="True" ForeColor="White" BorderColor="#2D3043" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#2D3043" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:master %>" DeleteCommand="DELETE FROM [Cart] WHERE [cID] = @cID" InsertCommand="INSERT INTO [Cart] ([cID], [cName], [cCategory], [cPrice], [cPoint]) VALUES (@cID, @cName, @cCategory, @cPrice, @cPoint)" ProviderName="<%$ ConnectionStrings:master.ProviderName %>" SelectCommand="SELECT * FROM [Cart]" UpdateCommand="UPDATE [Cart] SET [cName] = @cName, [cCategory] = @cCategory, [cPrice] = @cPrice, [cPoint] = @cPoint WHERE [cID] = @cID">
            <DeleteParameters>
                <asp:Parameter Name="cID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cID" Type="String" />
                <asp:Parameter Name="cName" Type="String" />
                <asp:Parameter Name="cCategory" Type="String" />
                <asp:Parameter Name="cPrice" Type="Int32" />
                <asp:Parameter Name="cPoint" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cName" Type="String" />
                <asp:Parameter Name="cCategory" Type="String" />
                <asp:Parameter Name="cPrice" Type="Int32" />
                <asp:Parameter Name="cPoint" Type="String" />
                <asp:Parameter Name="cID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </div>
</asp:Content>
