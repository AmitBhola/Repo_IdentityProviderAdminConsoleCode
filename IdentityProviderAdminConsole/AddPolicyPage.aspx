<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPolicyPage.aspx.cs" Inherits="IdentityProviderAdminConsole.AddPolicyPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="jumbotron">
            <h1>Add Policy Admin Console</h1>
            <p class="lead">This web page will provide an easy interface for the Identity Provider Administrator with an easy interface to Add Access Control Policies </p>
            <p class="lead">&nbsp;</p>
            <p class="lead">Policy Table</p>
        </div>
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Policy_ID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Policy_ID" HeaderText="Policy_ID" ReadOnly="True" SortExpression="Policy_ID" />
                <asp:BoundField DataField="Policy_Name" HeaderText="Policy_Name" SortExpression="Policy_Name" />
                <asp:BoundField DataField="Policy_EasyName" HeaderText="Policy_EasyName" SortExpression="Policy_EasyName" />
                <asp:BoundField DataField="Policy_StartDate" HeaderText="Policy_StartDate" SortExpression="Policy_StartDate" />
                <asp:BoundField DataField="Policy_EndDate" HeaderText="Policy_EndDate" SortExpression="Policy_EndDate" />
                <asp:BoundField DataField="Policy_Privilages" HeaderText="Policy_Privilages" SortExpression="Policy_Privilages" />
                <asp:BoundField DataField="app_name" HeaderText="app_name" SortExpression="app_name" />
                <asp:ButtonField ButtonType="Button" Text="Select" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FinalPolicyDbConnectionString %>" SelectCommand="SELECT * FROM [tbl_Policies]"></asp:SqlDataSource>
        <br />
        <br />
        <p class="lead">User Table</p>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="User_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="User_ID" HeaderText="User_ID" ReadOnly="True" SortExpression="User_ID" />
                <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
                <asp:BoundField DataField="User_NickName" HeaderText="User_NickName" SortExpression="User_NickName" />
                <asp:BoundField DataField="User_Addr" HeaderText="User_Addr" SortExpression="User_Addr" />
                <asp:ButtonField ButtonType="Button" Text="Select" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalPolicyDbConnectionString %>" SelectCommand="SELECT [User_ID], [User_Name], [User_NickName], [User_Addr] FROM [tbl_User]"></asp:SqlDataSource>
    </form>
</body>
</html>
