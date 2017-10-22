<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en" style="background-color:#942942">
    <head>
        <title>Interient a Interior category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Interient Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->

        <!--fonts-->
        <link rel="stylesheet" href="css/lightbox.css" type="text/css" media="all" />
        <!--owl-css-->
        <link href="css/owl.carousel.css" rel="stylesheet">
        <!--bootstrap-->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!--coustom css-->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <!--default-js-->
        <script src="js/jquery-2.1.4.min.js"></script>
        <!--bootstrap-js-->
        <script src="js/bootstrap.min.js"></script>
        <!--script-->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
 <%
            String msg = (String) session.getAttribute("msg");
            if (msg != null) {
        %>
        <Script>
            var msg = '<%=msg%>';
            alert(msg);
        </script>
        <%
                session.removeAttribute("msg");
            }
        %>
    </head>
    <!--body-->
    <body>
        <!--head-starts-->
        <div class="header" id="home">
            <div class="header-top">
                <nav class="navbar navbar-default nav-dflt-setin">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header nav-min-wid">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <h1><a class="navbar-brand" href="UserHome.jsp">DATAUSER</a></h1>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">

                            <ul class="nav navbar-nav nav-max-wid cl-effect-5" id="cl-effect-5">
                                <li><a href="UserHome.jsp"><span data-hover="HOME" class="active">HOME</span></a></li>
                                <li><a href="Notification.jsp"><span data-hover="NOTIFICATION">NOTIFICATION</span></a></li>
                                <li><a href="File_Request.jsp"><span data-hover="FILE_REQUEST">FILE_REQUEST</span></a></li>
                                <li><a href="Get_File.jsp"><span data-hover="GET_FILE">GET_FILE</span></a></li>
                                <li><a href="DataUser.jsp"><span data-hover="LOGOUT">LOGOUT</span></a></li>
                                
                            </ul>



                        </div><!-- /.navbar-collapse -->
                        <div class="clearfix"></div>
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
            <div class="header-bottom">
                <div id="mycarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#mycarousel" data-slide-to="1"></li>
                        <li data-target="#mycarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="images/ownerslide.png" alt="banner" class="banner-wid" height="5%">

                        </div>


                    </div>
                    <!-- Controls -->

                </div>
            </div>
        </div>
        <!--head-ends-->

        <!--content-starts-->

        <!--content-ends-->

        <!--footer-starts-->

        <!--footer-ends-->
    </body>
    <!--body-->
</html>