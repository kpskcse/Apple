<%@page import="Connection.DB"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.security.Provider.Service"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@page language="java"%>
<%@page import="java.util.*" %>
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
                              <h1><a class="navbar-brand" href="Admin_Home.jsp">ADMIN</a></h1>
                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">

                            <ul class="nav navbar-nav nav-max-wid cl-effect-5" id="cl-effect-5">
                                <li><a href="Admin_Home.jsp"><span data-hover="HOME">HOME</span></a></li>
                                <li><a href="Owner_Files.jsp"><span data-hover="LOADED FILES">LOADED FILES</span></a></li>
                                <li><a href="Shared_Files.jsp"><span data-hover="SHARED FILES"  class="active">SHARED FILES</span></a></li> 
                                <li><a href="CloudAdmin.jsp"><span data-hover="LOGOUT"  >LOGOUT</span></a></li>                                                              
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
                    <h2>SHARED FILES</h2>
                    <div class="col-sm-4 col-xs-6 about-grid abt-brp">
                        <img src="images/3new.jpg" class="img-circle abt-img" alt=""  style="margin-left:132%" />

                    </div>
                    <!-- /.row -->
                </div>
            </div>
            <!--about-top-->

        </div>
        <div class="col-sm-7 col-xs-12 contact-right">
            <%
                DB db = new DB();
                // String fileid=(String)request.getAttribute("fileid");
                String query = "SELECT * FROM userreq where Sem_Dec_Key!='Not_Assigned'";
                ResultSet i = db.Select(query);
            %> 

            <div class="form-details">
                <table cellpadding="55" style="margin-left: 57%; color: white;"border="2">
                    <tr>
                        <td><b>FILE_INDEX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></td>
                        <td><b>FILE_CONTENT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
                        <td><b>OWNER_NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></td>
                        <td><b>USER_NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td>
                    </tr>
                    <%

                        while (i.next()) {
                    %> 
                    <tr>
                        <td><%=i.getInt("fid")%></td>                     
                        <td><%=i.getString("fname")%></td>   
                        <td><%=i.getString("owname")%></td>
                        <td><%=i.getString("usname")%></td>   




                        <%

                            } //else {
                            // session.setAttribute("msg", "Here dont have files");
                            // response.sendRedirect("Fileupload.jsp");

                            //}

                        %>
                    </tr></table>
            </div>
        </div>



        <!--about-ends-->

        <!--footer-starts-->

        <!--footer-ends-->
    </body>
</html>