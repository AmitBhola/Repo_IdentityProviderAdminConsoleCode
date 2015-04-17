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
            <p>&nbsp;</p>
            <p>
                The Policy :
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="PolicyName" DataValueField="PolicyID" style="margin-top: 0px">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The User:
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="ID" style="margin-top: 0px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PolicyDBConnectionString %>" SelectCommand="procGetPolicies" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PolicyDBConnectionString %>" SelectCommand="procGetUsers" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </p>
        </div>
    </div>
    </form>
</body>
</html>
