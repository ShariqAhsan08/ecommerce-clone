<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="vplproject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>GIGA-GADGETS</title>

    <link href="main.css" rel="stylesheet" />

    <script src="jquery-3.7.0.js"></script>

    <script src="bootstrap.bundle.js"></script>

    <link href="bootstrap.css" rel="stylesheet" />


    <script src="popper.js"></script>

    <script src="script.js"></script>

    <script src="main.js"></script>
</head>
<body>
        <main class="container-fluid">

    <!-- header section start -->
    <header class="head1">
        <div class="logo">
            
            <a> <img src="image/2.JPG" alt="" class="image" class="logo-img"></a>
            <a>
                <h1 class="h-1">GIGA-GADGETS</h1>
            </a>
        </div>


        <nav class="simple-menu">
            <ul class="simple-menu-list">
                <li><a href="#" target="_blank">Home</a> </li>
                <li><a href="about.html" target="_blank">about </a></li>
                <li><a href="services.html" target="_blank">Services </a> </li>
                <li>
                    <a href="#" target="_blank">Product <ion-icon name="caret-down-outline"></ion-icon></a>
                    <ul class="sub-menu">
                        <li>
                            <a href="#">desktop system<ion-icon name="caret-forward-outline"></ion-icon></a>
                            <ul class="sub-menu-system">
                                <li><a href="#">HP</a></li>
                                <li><a href="#">Dell</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">laptop<ion-icon name="caret-forward-outline"></ion-icon></a>
                            <ul class="sub-menu-laptop">
                                <li><a href="#">Hp</a></li>
                                <li><a href="#">dell</a></li>
                                <li><a href="#">lenovo</a></li>
                                <li><a href="#">asus</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">mobile<ion-icon name="caret-forward-outline"></ion-icon></a>
                            <ul class="sub-menu-mobile">
                                <li><a href="#">nokia</a></li>
                                <li><a href="#">Apple</a></li>
                                <li><a href="#">huwavi</a></li>
                                <li><a href="#">samsung</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">accaserioes<ion-icon name="caret-forward-outline"></ion-icon></a>
                            <ul class="sub-menu-sub">
                                <li><a href="#">processor</a></li>
                                <li><a href="#">mother board</a></li>
                                <li><a href="#">graphics card</a></li>
                                <li><a href="#">kayboard</a></li>
                                <li><a href="#">mouse</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">smart watches<ion-icon name="caret-forward-outline"></ion-icon></a>
                            <ul class="sub-menu-watch">
                                <li><a href="#">huwavi</a></li>
                                <li><a href="#">Apple</a></li>
                            </ul>
                        </li>

                    </ul>
                </li>
                <li><a href="sale.html" target="_blank" class="active"> sale </a> </li>
                <li><a href="#" target="_blank">Contact</a></li>
            </ul>
        </nav>


        <div class="social">
            <div>
                <ion-icon name="logo-facebook" class="icon"></ion-icon>
                <ion-icon name="logo-instagram" class="icon"></ion-icon>
                <ion-icon name="logo-linkedin" class="icon"></ion-icon>
            </div>
            <h3 class="f-h"> login<ion-icon name="log-in-outline" class="icon"></ion-icon></h3>

        </div>

    </header>


        <div class="con-f">

            <div class="map">
                
                <img src="Capture.JPG" class="map-map" />
            </div>



    <form id="form1" runat="server">
        <div>
        </div>
    </form>




             <footer class="">
         <div class="grid-f">
             <div class="f-col">
                 <h3 class="f-h">opening hours</h3>
                 <p class="f-p">monday 10:00 Am to 10:00 Pm </p>
                 <p class="f-p">tuesday 10:00 Am to 10:00 Pm </p>
                 <p class="f-p">wednesday 10:00 Am to 10:00 Pm </p>
                 <p class="f-p">thusday 10:00 Am to 10:00 Pm </p>
                 <p class="f-p">friday 10:00 Am to 10:00 Pm <em>(1:00 PM to 3:00 Pm namza break)</em> </p>
                 <p class="f-p">saturday 12:00 Pm to 10:00 Pm </p>
                 <p class="f-p">sunday close </p>
             </div>

             <div class="f-col">
                 <h3 class="f-h">location</h3>
                 <p class="f-p">main xyz road on abc shoping center shop#45 </p>
                 <p class="f-p">main xyz road on tech shoping center shop#452 </p>
             </div>

             <div class="f-col">
                 <h3 class="f-h">menu</h3>
                 <ul class="f-menu">
                     <li><a href="#">home</a></li>
                     <li><a href="#">about</a></li>
                     <li><a href="#">Services</a></li>
                     <li><a href="#">product</a></li>
                 </ul>
             </div>

             <div class="f-col">
                 <h3 class="f-h">CONTACT</h3>
                 <p class="f-p">phone-1 :<em>0325-258552</em></p>
                 <p class="f-p">phone-2 :<em>0325-258545</em></p>
                 <p class="f-p">Email :<em>info@GIGAGADGETS.com</em></p>
                 <p class="f-p"><strong>social media link</strong> </p>
                 <div class="social-f">
                     <a href="www.facebook.com"><ion-icon name="logo-facebook"></ion-icon></a>
                     <a href="www.instagram.com"><ion-icon name="logo-instagram"></ion-icon></a>
                     <a href="www.linkedin.com"><ion-icon name="logo-linkedin"></ion-icon></a>
                     <a href="www.twitter.com"><ion-icon name="logo-twitter"></ion-icon></a>
                 </div>
             </div>
         </div>
         <div class="f-n">
             <div class="f-name">GIGA-GADGETS</div>
             <span class="copy-f">&copy; copyright Giga gadgets ltd. all rights reserved</span>
         </div>

     </footer>



</body>
</html>
</body>
</html>
