<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminview1.aspx.cs" Inherits="vplproject.adminview1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;background-color:black; color:papayawhip; padding:20px;" ><h1>Admin View</h1></div>
        <br />
<br />
        <div class="container">
             <div style="text-align:center; background-color:black; color:papayawhip;"><h1>Customer Table</h1></div>
            <asp:GridView ID="GridView1" CssClass="table table-dark" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="cusname" HeaderText="cusname" SortExpression="cusname" />
                    <asp:BoundField DataField="cusemail" HeaderText="cusemail" SortExpression="cusemail" />
                    <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT * FROM [custable]"></asp:SqlDataSource>

            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Enter ID to Delete" CssClass="form-label" ></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Enter ID to Delete" ></asp:TextBox><br />
            <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" CssClass="btn btn-dark"/>
            
            <asp:Label ID="Label5" runat="server" Text="" ></asp:Label>

            <br /><br />

            <asp:Label ID="Label3" runat="server" Text="Update your name here" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Change Name Here" CssClass="form-control"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Provide Your Id" CssClass="form-control"></asp:TextBox><br />
            <asp:Button ID="Button3" runat="server" Text="Uptade" CssClass="btn btn-dark" OnClick="Button3_Click"/>
            
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

        </div>
        <br /><br /><br /><br />
       <div class="container">
            <div style="text-align:center;background-color:black; color:papayawhip"><h1>Add To Cart Data </h1></div>
        <asp:GridView ID="GridView2" runat="server" CssClass="table table-primary" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="pdname" HeaderText="pdname" SortExpression="pdname" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT * FROM [cart]"></asp:SqlDataSource>

        <br />
<br />
<asp:Label ID="Label1" runat="server" Text="Enter ID to Delete" CssClass="form-label"></asp:Label>
<asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Provide Your Id"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-dark" Text="Delete Cart" OnClick="Button1_Click1" />
           <asp:Label ID="Label6" runat="server" Text="" ></asp:Label>



           </div>
    </form>
</body>
</html>
