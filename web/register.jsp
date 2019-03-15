<%-- 
    Document   : register
    Created on : Sep 13, 2017, 6:57:36 PM
    Author     : PUNEIEI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Codee.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css" media="all">
        <link href="font-awesome.min.css" rel="stylesheet" type="text/css" media="all">    
        <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'><link href='//fonts.googleapis.com/css?family=Raleway+Dots' rel='stylesheet' type='text/css'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="newcss.css" />
        <style>
            h1{ text-align : center;}
            .wrapper {
                text-align: center;
            }
            body {
    background: url('bg.jpg');
    background-size: cover;
	font-family: 'Lato', sans-serif;
	text-align:center;
}
        </style>
        <title>JSP Page</title>
    </head>
    <body>    

        <%
            Connec con = new Connec();
            Login log = new Login();
            con.ConnecDatabase();
            if (request.getParameter("Action") != null) {
                log.setUsername(request.getParameter("txtName"));
                log.setPassword(request.getParameter("txtPass"));
                String PhoneNumbers = request.getParameter("PhoneNumber");
                log.PhoneNumber = Integer.parseInt(PhoneNumbers);
                request.setCharacterEncoding("UTF-8");
                try {
                    log.setSqlReLogin(log.getUsername(), log.getPassword(), log.PhoneNumber, request.getParameter("Address"));
                    con.s.execute(log.getSqlReLogin());
                    out.println("Register Successfully");


        %>

        <a href="Login.jsp">Login</a>
        <%                        } catch (Exception e) {
                    // TODO Auto-generated catch block
                    out.println(e.getMessage());
                    e.printStackTrace();
                }

                try {
                    if (con.s != null) {
                        con.s.close();
                        con.connect.close();
                    }
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    out.println(e.getMessage());
                    e.printStackTrace();
                }

            }

        %>

        <br>
        <br>
        <div class="header-w3l">
            <h1>Sign Up Form</h1>
        </div>
        <!--//header-->
        <!--main-->
        <div class="main-agileits">
            <h2 class="sub-head">Sign Up</h2>
            <div class="sub-main">	
                <form action="register.jsp?Action=Login" method="post">
                    <input placeholder="User" name="txtName" class="name" type="text" required="">
                    <span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span><br>			
                    <input placeholder="Phone Number" name="PhoneNumber" class="number" type="text" required="" required pattern=[0-9]{10}>
                    <span class="icon2"><i class="fa fa-phone" aria-hidden="true"></i></span><br>
                    <input placeholder="Address" name="Address" class="text" type="text" required="">
                    <span class="icon4"><i class="fa fa-envelope" aria-hidden="true"></i></span><br>
                    <input  placeholder="Password" name="txtPass" class="pass" type="password" required="" id="password">
                    <span class="icon5"><i class="fa fa-unlock" aria-hidden="true"></i></span><br>
                    <input  placeholder="Confirm Password" name="cktxtPassword" class="pass" type="password" required="" id="confirm_password">
                    <span class="icon6"><i class="fa fa-unlock" aria-hidden="true"></i></span><br>
                    <input type="submit" value="sign up" name="submit">
                    
                    <script>
                        var password = document.getElementById("password")
                                , confirm_password = document.getElementById("confirm_password");

                        function validatePassword() {
                            if (password.value !== confirm_password.value) {
                                confirm_password.setCustomValidity("Passwords Don't Match");
                            } else {
                                confirm_password.setCustomValidity('');
                            }
                        }

                        password.onchange = validatePassword;
                        confirm_password.onkeyup = validatePassword;


                    </script>
                </form>
                <form  action="Login.jsp">                           
                 <input type="submit" value="Back" >  
                   
              </form>
            </div>
            <div class="clear"></div>
        </div>
        
    </body>
</html>
