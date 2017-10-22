<%@page import="java.io.*"%>
<%@page import="java.util.UUID"%>
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
                    var file1 = document.getElementById('aaa').value;
                    if (file1=="")
            {
            alert('Choose the File for Upload');
                    return false;
            }
            var fup = document.getElementById('aaa');
                    var fileName = fup.value;
                    var fsize = fup.files[0].size;
                    if (fsize > 1000000)
            {
            alert('File size is too large.upload maximum 1 Mb file')
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
            <d
                iv class="header-top">
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
                            <h1><a class="navbar-brand" href="Owner_Home.jsp">DATAOWNER</a></h1>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">

                            <ul class="nav navbar-nav nav-max-wid cl-effect-5" id="cl-effect-5">
                                <li><a href="Owner_Home.jsp"><span data-hover="HOME" >HOME</span></a></li>
                                <li><a href="Key_Req.jsp"><span data-hover="KEY_REQUEST">KEY_REQUEST</span></a></li>
                                <li><a href="View_File.jsp"><span data-hover="FILE_UPLOAD" class="active">FILE_UPLOAD</span></a></li>
                                <li><a href="View_Request.jsp"><span data-hover="VIEW REQUEST">VIEW REQUEST</span></a></li>
                                <li><a href="DataOwner.jsp"><span data-hover="LOGOUT">LOGOUT</span></a></li>                                
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
                    <h2>DATAOWNER</h2>
                    <div class="col-sm-4 col-xs-6 about-grid abt-brp">
                        <img src="images/3new.jpg" class="img-circle abt-img" alt=""  style="margin-left:132%" />

                    </div>
                    <!-- /.row -->
                </div>
            </div>
            <!--about-top-->

        </div>
        <div class="col-sm-7 col-xs-12 contact-right">

            <div class="form-details">
                <form action="File_Upload"  method="post" style="margin-left: 37%; margin-top: -4%" enctype="multipart/form-data" onsubmit="return ValidateAll();" >
                    <label style="color :white; margin-left: -8%; font-size: 16px; margin-top: 3%;"><b>File Index</b></label>
                    <input type ="text" name="fid" readonly="" value="<%=request.getParameter("cid")%>"id="fid" style="margin-left:68%;color: white;  margin-top: -9%;" required  title="Upto 3 Digits Number  Only!!!" placeholder="Enter File ID"  pattern="[0-9]{3}"style="color: white;"><br>
                    <label style="color : white;font-size: 16px; margin-left: -13%;"><b>File</b></label>
                    <input type ="file" name="file1"  id="aaa" style="margin-left:68%; margin-top: -7%"  ><br>
                      <script>$('#aaa').change( function(event) {
                                    var id1=document.getElementById("aaa");
                                    var fileName=id1.value;
                                    var ext=fileName.substring(fileName.lastIndexOf('.')+1);
                                    var uid_len = id1.value.length;
                                    var file=id1.files[0];
                                    var uid_len = id1.value.length;
                                    if(file.size<0 || file.size >= 1048576)
                                    {
                                    document.getElementById("aaa").value="";
                                    alert("File Size Should be less than 1MB only");
                                    }
                                    else
                                    {
                                    document.getElementById("filesize").value=file.size;
                                    document.getElementById("ext").value=ext;
                                    }
                                    });</script>
                    <label style="color : white;font-size: 16px;margin-left: -3%"><b>File Content</b></label>
                    <input type ="text" name ="fname" value="<%=request.getParameter("cname")%>" id="fname" style=" color: white; margin-top: -7%; margin-left:68%;"  required title="Alphabets Only!!!"pattern="{3,15}" placeholder="Enter File Name"><br>
                     <label style="color :white;font-size: 16px;margin-left: -3%"><b>File Type</b></label>
                     <input type ="text" name ="ext" value="" onchange="AlterFileSize();"id="ext"  style="color: white; margin-top: -7%; margin-left:68%;"  required title="Alphabets Only!!!"pattern="{3,15}" placeholder="Enter File Name"><br>
                    <label style="color :white;font-size: 16px; margin-left: -5%;"><b>File Size</b></label>
                    <input name="filesize" type="text" readonly="" value="" readonly="readonly"  id="filesize" onchange="AlertFilesize();" style="margin-top: -7%;color: white;  margin-left:68%;" required title ="Please Choose File" placeholder="File size in KB" pattern="[0-9]{0,15}"><br>              
                    <label style="color :white;font-size: 16px;margin-left: -2%;"><b>Public Key</b></label>
                    <input type ="text" name ="pkey" readonly="" value="<%=request.getParameter("ckey")%>"   id="pkey" style="margin-top: -7%;color: white;  margin-left:68%;" placeholder="Public Key"><br>
                    <label style="color : white;font-size: 16px;margin-left: -2%;"><b>Enter Key</b></label>
                    <input type ="text" name ="fkey" id="fkey" style="margin-top: -7%; margin-left:68%;color: white; "  placeholder="File Access Key"  required  title="Upto 3 Digits Number!!!" pattern="[0-9]{3}" ><br>
                    <label style="color : white;font-size: 16px;margin-left: 2%;"><b>Owner Name</b></label>
                    <input type ="text" name ="ekey" id="ekey"  readonly="" value="<%=session.getAttribute("username")%>" style="color: white; margin-top:-7% ; margin-left:68%;"><br>
                    <input type="submit" value="Upload" style="margin-top: 2%; width: 15%; margin-left: 123%; background-color:white; color:#942942;">
                </form>
            </div>
        </div>



        <!--about-ends-->

        <!--footer-starts-->

        <!--footer-ends-->
    </body>
</html>