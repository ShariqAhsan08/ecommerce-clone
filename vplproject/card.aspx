<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="card.aspx.cs" Inherits="vplproject.card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Shopping Cart</h2>
        </div>
        <div>
            <h3>iPhone</h3>
            <img src="image/h-sw.jpg" width="100px" height="100px" />
            <asp:Label ID="Label1" runat="server" Text="2000"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Add to Cart" OnClick="Button1_Click" />
        </div>
        <div>
            <h3>Laptop</h3>
            <img src="image/hp.jpeg" width="100px" height="100px" />
            <asp:Label ID="Label2" runat="server" Text="5000"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="Add to Cart" OnClick="Button2_Click" />
        </div>
        <div>
            <h3>Watch</h3>
            <img src="image/galaxy-s20-cloud-pink.jpg" width="100px" height="100px" />
            <asp:Label ID="Label3" runat="server" Text="1000"></asp:Label>
            <asp:Button ID="Button3" runat="server" Text="Add to Cart" OnClick="Button3_Click" />
        </div>
        <div>
            <!-- Display Cart Items and Total -->
            <asp:Label ID="CartLabel" runat="server" Text="Cart Items:" />
            <asp:Repeater ID="CartRepeater" runat="server">
                <ItemTemplate>
                    <div>
                        <asp:Literal runat="server" Text='<%# Eval("pdname") + " - $" + Eval("price") %>' />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Label ID="TotalLabel" runat="server" Text="Total: $" />
        </div>
    </form>
</body>
</html>
