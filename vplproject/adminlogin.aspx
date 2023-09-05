<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="vplproject.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>GIGA-GADGETS</title>
    
    <link href="main.css" rel="stylesheet" />

    <link href="bootstrap.css" rel="stylesheet" />

    <script src="main.js"></script>

    <script src="popper.js"></script>

    <script src="jquery-3.7.0.js"></script>

    <script src="bootstrap.bundle.js"></script>
     <style>
body{
background-color: var(--bachground-color);
}
.f-main {
    background-color: var(--bachground-color);
    text-align: center;
}

.he-1 {
    color: var(--helper-color);
    text-align: center;
    text-transform: uppercase;
}

.image {
    width: 250px;
    height: 250px;
    text-align: center;
}

    .image img {
        width: 100%;
        border-radius: 60px;
        text-align: center;
        margin-right: auto;
        margin-left: auto;
    }

.f-main {
    margin-top: 30px;
}

.lab {
    color: var(--helper-color);
}

.button78 {
    padding: 1rem;
    border-radius: 1rem;
    background-color:  var(--primary-color);
    color: var(--helper-color);
    text-transform:uppercase;
}

 </style>
</head>
   
<body>
           <div class="f-main">
               <h1 class="he-1">giga gaudet</h1>
                <div class="image"> 
     <img src="image/2.JPG"/> 
 </div> 
    

  

        <form id="signupForm" runat="server">
        <div class="container mt-5">
            <h2 class="he-1">Admin login</h2>
           
            <div class="mb-3">
                <asp:Label ID="Label1" runat="server" Text="Your Name" class="form-label lab"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
            </div>


            <div class="mb-3">
                <asp:Label ID="Label2" runat="server" Text="pass" class="form-label lab"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
            </div>


           
            <asp:Button ID="Button1" runat="server" Class="button78" Text="login" OnClick="Button1_Click" />
        </div>
           
    </form>
        </div>
    </body>
    </html>