<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Women's Fashion a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Checkout :: w3layouts</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Women's Fashion Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/fasthover.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script src="js/jquery.min.js"></script>
        <!-- //js -->
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <!-- for bootstrap working -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- start-smooth-scrolling -->

        <%@page import = "Codee.*" %>
        <%@ page import="java.sql.ResultSet" %>
        <%@ page import="java.sql.SQLException" %>
        <%@ page import="java.sql.Statement" %>
        <%@ page import="java.sql.Connection" %>
        <%@ page import="java.sql.DriverManager" %>
        <script type="text/javascript">
jQuery(document).ready(function ($) {
    $(".scroll").click(function (event) {
        event.preventDefault();
        $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
    });
});
        </script>
        <!-- //end-smooth-scrolling -->
    </head>

    <body>
        <%IndexView IDV = new IndexView();
            IDV.setStrUserID(session.getAttribute("sUserID").toString());
            IDV.setUser(session.getAttribute("UN").toString());
            IDV.setUserID(IDV.getStrUserID().toString());
            IDV.Username = IDV.getUser().toString();
            Connec con = new Connec();
            con.ConnecDatabase();
            ResultSet rec,rec2;
        %>
        <!-- header -->
        <div class="header">
            <div class="container">
                <form  >                    
                    <%out.print("User : " + IDV.Username);%>                    
                </form>
                <form action="logout.jsp">                  

                    <input wide="99" type="submit" value="Logout" >


                </form>
                <div class="w3l_logo">
                    <h1><a href="Home.jsp">Women's Fashion<span>For Fashion Lovers</span></a></h1>
                </div>

                <div class="cart box_1">
                    <a href="checkout.jsp">
                        <div class="total">
                            <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
                        <img src="images/bag.png" alt="" />
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
                    <div class="clearfix"> </div>
                </div>	
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="navigation">
            <div class="container">
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div> 
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="Home.jsp">Home</a></li>	
                            <!-- Mega Menu -->
                            <li class="active"><a href="checkout.jsp" class="act">Checkout</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- //header -->
        <!-- banner -->
        <div class="banner10" id="home1">
            <div class="container">
                <h2>Checkout</h2>
            </div>
        </div>
        <!-- //banner -->

        <!-- breadcrumbs -->
        <div class="breadcrumb_dress">
            <div class="container">
                <ul>
                    <li><a href="Home.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
                    <li>Checkout</li>
                </ul>
            </div>
        </div>
        <!-- //breadcrumbs -->

        <!-- checkout -->
        <div class="checkout">
            <div class="container">

                <h3>Your shopping cart contains: <span id="simpleCart_quantity" class="simpleCart_quantity"></span> Products</h3>

                <div class="checkout-right">
                    <table class="timetable_sub">
                        <thead>
                            <tr>
                                <th>Order No.</th>	
                                <th>User</th>
                                <th>Product</th>
                                <th>Price</th>                          
                            </tr>
                        </thead>
                        <%
                            
                            Date dNow = new Date();
                            SimpleDateFormat ft = new SimpleDateFormat("yyyy.MM.dd");
                            String getDate = ft.format(dNow);
                            Statement ss=null;
                            rec = con.s.executeQuery("SELECT IDorder,Name,Price FROM  oderbuy WHERE IDuser = '" + IDV.UserID + "'"+" AND Dates = '"+getDate+"'"+ "ORDER BY IDorder ASC");
                            //rec2= ss.executeQuery("SELECT SUM(Price)FROM oderbuy WHERE IDuser = "+IDV.UserID);
                            
//"SELECT * FROM  datanaja WHERE IDsyn = '" + this.UserID + "'"+"ORDER BY Numrun DESC";%>
                        <tbody>                            
                            <%while((rec!=null) && (rec.next())) { %>   
                            <tr>                               
                                <td  width="190" > <div align="center"><%=rec.getString("IDorder")%></div></td>
                                <td><div align="center"><%out.print(IDV.Username.toUpperCase());%></div></td>
                                <td><%=rec.getString("Name")%></td>
                                <td  width="190" > <div align="center"><%=rec.getString("Price")%></div></td>                            
                                <%}%>
                                
                            </tr>
                            
                        </tbody>
                        <!--quantity-->
                        <script>
                            $('.value-plus').on('click', function () {
                                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                                divUpd.text(newVal);
                            });

                            $('.value-minus').on('click', function () {
                                var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                                if (newVal >= 1)
                                    divUpd.text(newVal); 
                            });
                        </script>
                        <!--quantity-->
                    </table>
                            
                </div>
                            
                <div class="checkout-left">	
                    <div class="checkout-left-basket">                                                                        
                        <ul>                        
                            
                            <li>Total <i>-</i> <span class="simpleCart_total">$</span></li>   
                            
                        </ul>
                    </tbody>
                    </div>
                    <div class="checkout-right-basket">
                        <a href="Home.jsp"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continue Shopping</a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

        <!-- //checkout -->
<div class="footer-copy">
			
			<div class="container">
				<p>&copy; 2018 Women's Fashion. By Naruapol Putragul | Design by Man</p>
			</div>
		</div>
        <!-- //footer -->
    </body>
</html>