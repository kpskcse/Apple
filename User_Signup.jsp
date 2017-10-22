<%-- 
    Document   : DataOwner
    Created on : Jun 2, 2016, 3:35:37 PM
    Author     : kanmani_C
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en" style="background-color:#942942">
    <head>
        <title>Interient a Interior category Flat Bootstrap Responsive Website Template | About :: w3layouts</title>
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

        <style>
            input[type='text'], input[type='password'] {
                width: 70%;
                padding: 7px;
                outline: medium none;
                display: block;
                border: 2px solid #C7AB84;
                background-color: transparent;
                color: #1A1A1A;
                font-family: "Raleway";
            }
        </style>
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
         <script type="text/javascript">
            function ValidateAll()
            {
            var name1 = document.getElementById('name').value;
            var name11 = /^[A-Za-z ]+$/.test(name1);
            var namelen = name1.length;
            if (name1 == "")
            {
            alert('Name field cant be empty');
            return false;
            }
            else if (!name11)
            {
            alert('Name should be alphabets');
            return false;
            }
            else if ((namelen < 3) || (namelen > 20))
            {
            alert('Name should be between 6 to 20 characters');
            return false;
            }
            
            
            var name1 = document.getElementById('uname').value;
            var name11 = /^[A-Za-z ]+$/.test(name1);
            var namelen = name1.length;
            if (name1 == "")
            {
            alert('User name field cant be empty');
            return false;
            }
            else if (!name11)
            {
            alert('User name should be alphabets');
            return false;
            }
            else if ((namelen < 3) || (namelen > 20))
            {
            alert('User name should be between 3 to 20 characters');
            return false;
            }

            
            
            var name1 = document.getElementById('uname').value;
            var name11 = /^[A-Za-z]+$/.test(name1);
            var namelen = name1.length;
            if (name1 == "")
            {
            alert('user name field cant be empty');
            return false;
            }
            else if (!name11)
            {
            alert('user name should be alphabets');
            return false;
            }
            else if ((namelen < 6) || (namelen > 20))
            {
            alert('user name should be between 6 to 20 characters');
            return false;
            }
            
            
            var psw = document.getElementById('pswrd').value;
            var name11 = /^[a-zA-Z0-9]{3,8}$/.test(psw);
            var pswlen = psw.length;
            if (psw == "")
            {
            alert("Password Can't be Empty!!!");
            return false;
            }
            else if (!psw)
            {
            alert('Password Should Contain Aplhabets');
            return false;
            }
            else if ((pswlen < 3) || (pswlen > 8))
            {
            alert('Password Length should be between 3 to 8 characters');
            return false;
            }
            
            
            var mml = document.getElementById("ftype").value;
            var mmml = /^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$/.test(mml);
            var mlen = mml.length;
            if (mml == "")
            {
            alert("Phone Number Field Cant Empty");
            // document.getElementById("E_Ph").style.border='1px solid red';
            document.getElementById("mobile")
            return false;
            }
            else if (!mmml)
            {
            alert("Phone number should be 10 numbers not starting with 0 to 6");
            //document.getElementById("E_Ph").style.border='1px solid red';
            document.getElementById("mobile")
            return false;
            }
            else if ((mlen < 10) || (mlen > 10))
            {
            alert("Phone Number Should Contain 10 Numbers");
            //document.getElementById("E_Ph").style.border='1px solid red';
            document.getElementById("mobile")
            return false;
            }
            
            
            
            var Mail = document.getElementById('fsize').value;
            var filter = /^[a-zA-Z0-9\.]+@[-a-zA-Z0-9\.]+[(com)?]+$/.test(Mail);
            if (!filter) {
            alert("Mail ID Should have Extension .com");
            return false;
            }
            var cname=document.getElementById('fkey').value;
            var city = /^[a-zA-Z]{3,15}$/.test(cname);
            if (cname == "")
            {
            alert('user name field cant be empty');
            return false;
            }
            else if(!city)
            {
            alert("City Should Contain Alphabets Only!!!");
            document.getElementById("mobile")
            return false;
            }
            
            
            
            var s=document.getElementById('ekey').value;
            var state = /^[a-zA-Z]{3,15}$/.test(s);
            if (s == "")
            {
            alert("City Can't be Empty!!!");
            return false;
            }
            else if(!state)
            {
            alert("State Should Contain Alphabets Only!!!");
            document.getElementById("mobile")
            return false;
            }
            
            
            return true;
            }
        </script>
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
                            <h1><a class="navbar-brand" href="index.jsp">PROXY</a></h1>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">

                            <ul class="nav navbar-nav nav-max-wid cl-effect-5" id="cl-effect-5">
                                <li><a href="index.jsp"><span data-hover="HOME">HOME</span></a></li>
                                <li><a href="DataOwner.jsp"><span data-hover="DATAOWNER" >DATAOWNER</span></a></li>
                                <li><a href="DataUser.jsp"><span data-hover="DATAUSER" class="active">DATAUSER</span></a></li>
                                <li><a href="CSP.jsp"><span data-hover="CSP">CSP</span></a></li>
                                <li><a href="CloudAdmin.jsp"><span data-hover="CLOUDADMIN">CLOUDADMIN</span></a></li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                        <div class="clearfix"></div>
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
        </div>
        <!--header-ends-->

        <!--about-->
        <div class="about-content" style="background-color:#942942">
            <div class="about-top">
                <div class="container">
                    <h2>DATAUSER</h2>
                    <!-- /.row -->
                </div>
            </div>
            <!--about-top-->

        </div>
        <div class="col-sm-7 col-xs-12 contact-right">

            <div class="form-details">
               <form action="User_register" method="post" style="margin-left: 37%; margin-top: -14%" onsubmit="return ValidateAll();">
                    <label style="color : white; margin-left: -8%; font-size: 16px; margin-top: 3%;"><b>Name</b></label>
                    <input type ="text" name="name" id="name" style="margin-left:68%;color:white; margin-top: -9%;" required  title="Alphabets Only!!" placeholder="Enter the name"  pattern="[a-zA-Z]{3,15}"><br>
                    <label style="color : white;font-size: 16px; margin-left: -1%;"><b>UserName</b></label>
                    <input type ="text" name="uname" id="uname" style="margin-left:68%;color:white; margin-top: -7%" required  title="Username should be more than 3 char" placeholder="Enter the User Name"  pattern="[a-zA-Z]{3,15}"><br>
                    <label style="color :white;font-size: 16px;margin-left: -2%"><b>Password</b></label>
                    <input type ="password" name ="pswrd" id="pswrd" style="margin-top: -7%;color:white; margin-left:68%;"required title="Please Enter Password upto 8 Digit" pattern="[a-zA-Z0-9]{3,8}" placeholder="Enter the Password"><br>
                    <label style="color :white;font-size: 16px; margin-left: -8%;"><b>Mail ID</b></label>
                    <input type ="text" name ="fsize" id="fsize" style="margin-top: -7%;color:white; margin-left:68%;" placeholder="example@gmail.com" required  title="Enter Valid Mail ID" pattern="^([a-zA-Z0-9\.])+@([-a-zA-Z?\.]{4,9})+.([(com)?]{3})$"><br>
                    <label style="color : white;font-size: 16px;margin-left: -8%;"><b>Mobile</b></label>
                    <input type ="text" name ="ftype" id="ftype" style="margin-top: -7%;color:white; margin-left:68%;" placeholder="9566545412" required title="10 Digit Number Only" pattern="[7-9]{1}[0-9]{9}" ><br>
                    <label style="color : white;font-size: 16px;margin-left: -12%;"><b>City</b></label>
                    <input type ="text" name ="fkey" id="fkey" style="margin-top: -7%;color:white; margin-left:68%;" required title="Alphabets Only!!!" pattern="[a-zA-Z]{3,15}" placeholder="Chennai" ><br>
                    <label style="color : white;font-size: 16px;margin-left: -10%"><b>State</b></label>
                    <input type ="text" name ="ekey" id="ekey" style="margin-top:-7% ;color:white; margin-left:68%;" required title="Alphabets Only!!!" pattern="[a-zA-Z]{3,15}" placeholder="TamilNadu" ><br>
                    <input type="submit" value="Sign Up" style="margin-top: 2%; width: 23%; margin-left: 115%; background-color: white; color:#942942;">
                    <a href="DataUser.jsp" style="color: white"><b>Login</b> </a>
                </form>
            </div>
        </div>



        <!--about-ends-->

        <!--footer-starts-->

        <!--footer-ends-->
        
    </body>
</html>