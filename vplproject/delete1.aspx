﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete1.aspx.cs" Inherits="vplproject.delete1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="enter your id"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="delete" OnClick="Button1_Click" />

            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

        </div>
    </form>
</body>
</html>
