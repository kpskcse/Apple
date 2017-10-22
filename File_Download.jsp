<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DB"%>
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
        <script type="text/javascript">
            function AlertFilesize() {
            if (window.ActiveXObject) {
            var fso = new ActiveXObject("Scripting.FileSystemObject");
            var filepath = document.getElementById('file1').value;
            var thefile = fso.getFile(filepath);
            var sizeinbytes = thefile.size;
            }
            else
            {
            var sizeinbytes = document.getElementById('file1').files[0].size;
            }
            var max = 10000000; //50MB   

            if (sizeinbytes > max) {
            alert("The selected file is more than 1 MB !"); // Do your thing to handle the error.
            file1.value = null; // Clear the field.
            }
            else
            {
            var size1 = sizeinbytes / 1024 *1024;
            document.getElementById('filesize').value = size1;
            }

            }
        </script>
        <script type="text/javascript">
            function ValidateAll()
            {
            var file1 = document.getElementById('file1').value;
            if (file1 == "")
            {
            alert('Choose the file must for upload..');
            return false;
            }
            return true;
            }
        </script>
        <script>
            function ValidateAll()
            {
            var fup = document.getElementById('file1');
            var fileName = fup.value;
            var ext = fileName.substring(fileName.lastIndexOf('.') + 1);
            if (ext != "txt")
            {
            alert("Upload text files only");
            return false;
            }
            var name1 = document.getElementById('status').value;

            if (name1 == 'fileuploaded')
            {
            alert('Already file upload for this key');
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
                            <h1><a class="navbar-brand" href="index.html">DATAUSER</a></h1>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                         <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">

                            <ul class="nav navbar-nav nav-max-wid cl-effect-5" id="cl-effect-5">
                                <li><a href="UserHome.jsp"><span data-hover="HOME">HOME</span></a></li>
                                <li><a href="Notification.jsp"><span data-hover="NOTIFICATION" >NOTIFICATION</span></a></li>
                                <li><a href="File_Request.jsp"><span data-hover="FILE_REQUEST"  >FILE_REQUEST</span></a></li>
                                <li><a href="Get_File.jsp"><span data-hover="GET_FILE" class="active">GET_FILE</span></a></li>
                                <li><a href="DataUser.jsp"><span data-hover="LOGOUT">LOGOUT</span></a></li>                               
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
                    <h2>GET FILE</h2>
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
                <form action="download"  method="post" style="margin-left: 37%; margin-top: -4%">
                    <label style="color : #C7AB84; margin-left: -8%; font-size: 16px; margin-top: 3%;"><b>File ID</b></label>
                    <input type ="text" name="fid" readonly="" value="<%=request.getParameter("cid")%>"id="fid" style="margin-left:68%; margin-top: -9%;color: white;" required  title="Upto 3 Digits Number  Only!!!" placeholder="Enter File ID"  pattern="[0-9]{3}" style="color: white;"><br>                  
                    <label style="color : #C7AB84;font-size: 16px;margin-left: -3%"><b>File Name</b></label>
                    <input type ="text" name ="fname"  readonly="" value="<%=request.getParameter("cname")%>" id="fname" style="margin-top: -7%; margin-left:68%;color: white;" placeholder="Enter File Name" style="color: white;"><br>                                                 
                    <label style="color : #C7AB84;font-size: 16px;margin-left: 2%;"><b>Owner Name</b></label>
                    <input type ="text" name ="ekey" id="ekey" readonly="" value="<%=request.getParameter("coname")%>" style="margin-top:-7% ; margin-left:68%;color: white;"><br>
                    <label style="color : #C7AB84;font-size: 16px;margin-left: -2%;"><b>Semi_Dec_Key</b></label>
                    <input type ="text" name ="fkey" id="fkey"  readonly="" value="<%=request.getParameter("cskey")%>" style="margin-top: -7%; margin-left:68%;color: white;" placeholder="File Access Key" style="color: white;"><br>                    
                    <label style="color : #C7AB84;font-size: 16px;margin-left: -2%;"><b>Dec_Key</b></label>
                    <input type ="text" name ="rekey" id="rekey"  readonly="" value="<%=request.getParameter("cdkey")%>" style="margin-top: -7%; margin-left:68%;color: white;" required  title="Upto 3 Digits Number  Only!!!" placeholder="File Access Key" pattern="[0-9]{3}" style="color: white;"><br>                   
                    <input type="submit" value="DOWNLOAD" style="margin-top: 2%; width: 29%; margin-left: 109%; background-color: #C7AB84; color:#fff;">
                </form>
            </div>
        </div>
                 
        </div>  
                   
        <!--about-ends-->

        <!--footer-starts-->

        <!--footer-ends-->
    </body>
</html>