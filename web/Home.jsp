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
        <title>Women's Fashion a Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
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
        <!-- countdown -->
        <link rel="stylesheet" href="css/jquery.countdown.css" />
        <!-- //countdown -->
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
        <%
            
            Date dNow = new Date( );
            Connec con = new Connec();
            IndexView IDV = new IndexView();
            IDV.setStrUserID(session.getAttribute("sUserID").toString());
            IDV.setUser(session.getAttribute("UN").toString());
            IDV.setUserID(IDV.getStrUserID().toString());
            IDV.Username = IDV.getUser().toString();
            con.ConnecDatabase();
            String IDuser = IDV.UserID;
            int IDitem = 0;
            
            String Sql = "";
            String Nameitem ="";
            SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd");
            String getDate = ft.format(dNow);
            int prices ;           
            String Action = request.getParameter("Action");
            if (Action != null) {
                if (Action.equals("Add1")){
                    Nameitem = "HG GUNDAM FSD";
                    prices=660;
                    con.total +=prices;
                    IDitem = 1;
                    Sql = "INSERT INTO oderbuy " + "(IDuser,IDgundam,Name,Price,Dates) " + "VALUES" + "('" + IDuser + "','" + IDitem + "','"+Nameitem+"','"+prices+"','"+getDate+"')";      
                    con.s.execute(Sql);
                }
                else if(Action.equals("Add2")){
                    Nameitem = "HG GUNDAM GROUND TYPE";
                    prices=510;
                    con.total = con.total+prices;
                    IDitem = 2;
                    Sql = "INSERT INTO oderbuy " + "(IDuser,IDgundam,Name,Price,Dates) " + "VALUES" + "('" + IDuser + "','" + IDitem + "','"+Nameitem+"','"+prices+"','"+getDate+"')";      
                    con.s.execute(Sql);
                }
                else if(Action.equals("Add3")){
                    Nameitem = "HG GUNDAM 00 DIVER";
                    prices=300;
                    con.total = con.total+prices; 
                    IDitem = 3;
                    Sql = "INSERT INTO oderbuy " + "(IDuser,IDgundam,Name,Price,Dates) " + "VALUES" + "('" + IDuser + "','" + IDitem + "','"+Nameitem+"','"+prices+"','"+getDate+"')";      
                    con.s.execute(Sql);
                }
                else if(Action.equals("Add4")){
                    Nameitem = "RG MS-06S ZAKU II";
                    prices=950;
                    con.total = con.total+prices;
                    IDitem = 4;
                    Sql = "INSERT INTO oderbuy " + "(IDuser,IDgundam,Name,Price,Dates) " + "VALUES" + "('" + IDuser + "','" + IDitem + "','"+Nameitem+"','"+prices+"','"+getDate+"')";      
                    con.s.execute(Sql);
                }
               else if(Action.equals("Add5")){
                    Nameitem = "RG AILE STRIKE GUNDAM";
                    prices=950;
                    con.total = con.total+prices; 
                    IDitem = 5;
                    Sql = "INSERT INTO oderbuy " + "(IDuser,IDgundam,Name,Price,Dates) " + "VALUES" + "('" + IDuser + "','" + IDitem + "','"+Nameitem+"','"+prices+"','"+getDate+"')";      
                    con.s.execute(Sql);
                }
                 if(Action.equals("Add6")){
                    Nameitem = "RG UNICORN GUNDAM";
                    prices=1440;          
                    con.total = con.total+prices; 
                    IDitem = 6;
                    Sql = "INSERT INTO oderbuy " + "(IDuser,IDgundam,Name,Price,Dates) " + "VALUES" + "('" + IDuser + "','" + IDitem + "','"+Nameitem+"','"+prices+"','"+getDate+"')";      
                    con.s.execute(Sql);
                }
               else if (Action.equals("Empty")){
                con.total = 0;
                Sql="DELETE FROM oderbuy " +
				" WHERE IDuser = '" + IDV.UserID +"' ";
                 con.s.execute(Sql);
                } 
               //con.total = con.total+prices; 

               // response.sendRedirect("Home.jsp");
                //Sql="INSERT INTO orderbuy " + "(IDuser,IDgundam,Name,Price) " + "VALUES" +"('"+ IDuser + "','" + IDitem + "','" +"(SELECT Name,Price FROM gundam WHERE IDitem = "+IDitem+"'))";
                //con.s.execute(Sql);
            }
            
            try {
                
               
                //con.s.execute(Sql);
                //con.s.execute("INSERT INTO orderbuy " + "(IDuser,IDgundam) " + "VALUES" +"('"+ IDuser + "','" + IDitem +"')");
            } catch (Exception e) {
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
        %>

        <!-- header -->
        <script>
            $('#myModal88').modal('show');
        </script>
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
                            <span class="simpleCart_total" id="totala"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items) </div>
                        <img src="images/bag.png" alt="" />
                    </a>
                        
                    <p><a href="Home.jsp?Action=Empty" href="javascript:;"  class="simpleCart_empty">Empty Cart  </a> </p>
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
                            <li class="active"><a href="Home.jsp" class="act">Home</a></li>
                            <li class="active"><a href="checkout.jsp" class="act">Checkout</a></li>
                            <!-- Mega Menu -->
                            
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- //header -->
        <!-- banner -->
        <div class="banner" id="home1">
            <div class="container">
                <h3>fashions fade, <span>style is eternal</span></h3>
            </div>
        </div>
        <!-- //banner -->

        <!-- banner-bottom -->
        <div class="banner-bottom">
            <div class="container">
                <div class="col-md-5 wthree_banner_bottom_left">
                    <div class="video-img">
                        <a class="play-icon popup-with-zoom-anim" href="#small-dialog">
                            <span class="glyphicon glyphicon-expand" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!-- pop-up-box -->    
                    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" property="" media="all" />
                    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
                    <!--//pop-up-box -->
                    <div id="small-dialog" class="mfp-hide">
                        <iframe src="https://player.vimeo.com/video/23259282?title=0&byline=0&portrait=0"></iframe>
                    </div>
                    <script>
            $(document).ready(function () {
                $('.popup-with-zoom-anim').magnificPopup({
                    type: 'inline',
                    fixedContentPos: false,
                    fixedBgPos: true,
                    overflowY: 'auto',
                    closeBtnInside: true,
                    preloader: false,
                    midClick: true,
                    removalDelay: 300,
                    mainClass: 'my-mfp-zoom-in'
                });

            });
                    </script>
                </div>
                <div class="col-md-7 wthree_banner_bottom_right">
                    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home">HG</a></li>
                            <li role="presentation"><a href="#skirts" role="tab" id="skirts-tab" data-toggle="tab" aria-controls="skirts">RG</a></li>
                            
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
                                <div class="agile_ecommerce_tabs">
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="images/6.jpg" alt=" " class="img-responsive" />
                                            <img src="images/4.jpg" alt=" " class="img-responsive" />
                                            <img src="images/5.jpg" alt=" " class="img-responsive" />
                                            <img src="images/3.jpg" alt=" " class="img-responsive" />
                                            <img src="images/7.jpg" alt=" " class="img-responsive" />
                                            <img src="images/3.jpg" alt=" " class="img-responsive" />
                                            <img src="images/5.jpg" alt=" " class="img-responsive" />
                                            <img src="images/6.jpg" alt=" " class="img-responsive" />
                                            
                                        </div>
                                        <h5><a>HG GUNDAM FSD</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <form action="Home.jsp?Action=Add" method="post">
                                                <p><span>$960</span> <i class="item_price">$660</i></p>
                                                <p><a onclick="$(this).closest('form').submit()" class="item_add" href="Home.jsp?Action=Add1">Add to cart</a></p> 

                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="images/4.jpg" alt=" " class="img-responsive" />
                                            <img src="images/6.jpg" alt=" " class="img-responsive" />
                                            <img src="images/5.jpg" alt=" " class="img-responsive" />
                                            <img src="images/3.jpg" alt=" " class="img-responsive" />
                                            <img src="images/7.jpg" alt=" " class="img-responsive" />
                                            <img src="images/3.jpg" alt=" " class="img-responsive" />
                                            <img src="images/5.jpg" alt=" " class="img-responsive" />
                                            <img src="images/6.jpg" alt=" " class="img-responsive" />
                                            
                                        </div>
                                        <h5><a>HG GUNDAM GROUND TYPE</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$690</span> <i class="item_price">$510</i></p>
                                            <p><a onclick="$(this).closest('form').submit()" class="item_add" href="Home.jsp?Action=Add2">Add to cart</a></p> 
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="images/5.jpg" alt=" " class="img-responsive" />
                                            <img src="images/6.jpg" alt=" " class="img-responsive" />
                                            <img src="images/4.jpg" alt=" " class="img-responsive" />
                                            <img src="images/3.jpg" alt=" " class="img-responsive" />
                                            <img src="images/7.jpg" alt=" " class="img-responsive" />
                                            <img src="images/3.jpg" alt=" " class="img-responsive" />
                                            <img src="images/5.jpg" alt=" " class="img-responsive" />
                                            <img src="images/6.jpg" alt=" " class="img-responsive" />
                                            
                                        </div>
                                        <h5><a>HG GUNDAM 00 DIVER</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$500</span> <i class="item_price">$300</i></p>
                                           <p><a onclick="$(this).closest('form').submit()" class="item_add" href="Home.jsp?Action=Add3">Add to cart</a></p> 
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="skirts" aria-labelledby="skirts-tab">
                                <div class="agile_ecommerce_tabs">
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="images/8.jpg" alt=" " class="img-responsive" />
                                            <img src="images/9.jpg" alt=" " class="img-responsive" />
                                            <img src="images/10.jpg" alt=" " class="img-responsive" />
                                            <img src="images/8.jpg" alt=" " class="img-responsive" />
                                            <img src="images/9.jpg" alt=" " class="img-responsive" />
                                            <img src="images/10.jpg" alt=" " class="img-responsive" />
                                            <img src="images/8.jpg" alt=" " class="img-responsive" />
                                            <img src="images/9.jpg" alt=" " class="img-responsive" />
                                            
                                        </div>
                                        <h5><a>RG MS-06S ZAKU II</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$1250</span> <i class="item_price">$950</i></p>
                                            <p><a onclick="$(this).closest('form').submit()" class="item_add" href="Home.jsp?Action=Add4">Add to cart</a></p> 
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="images/9.jpg" alt=" " class="img-responsive" />
                                            <img src="images/8.jpg" alt=" " class="img-responsive" />
                                            <img src="images/10.jpg" alt=" " class="img-responsive" />
                                            <img src="images/8.jpg" alt=" " class="img-responsive" />
                                            <img src="images/9.jpg" alt=" " class="img-responsive" />
                                            <img src="images/10.jpg" alt=" " class="img-responsive" />
                                            <img src="images/8.jpg" alt=" " class="img-responsive" />
                                            <img src="images/9.jpg" alt=" " class="img-responsive" />
                                            
                                        </div>
                                        <h5><a>RG AILE STRIKE GUNDAM</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$1300</span> <i class="item_price">$950</i></p>
                                            <p><a onclick="$(this).closest('form').submit()" class="item_add" href="Home.jsp?Action=Add5">Add to cart</a></p> 
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="images/10.jpg" alt=" " class="img-responsive" />
                                            <img src="images/8.jpg" alt=" " class="img-responsive" />
                                            <img src="images/9.jpg" alt=" " class="img-responsive" />
                                            <img src="images/8.jpg" alt=" " class="img-responsive" />
                                            <img src="images/9.jpg" alt=" " class="img-responsive" />
                                            <img src="images/10.jpg" alt=" " class="img-responsive" />
                                            <img src="images/8.jpg" alt=" " class="img-responsive" />
                                            <img src="images/9.jpg" alt=" " class="img-responsive" />
                                            
                                        </div>
                                        <h5><a>RG UNICORN GUNDAM</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$1550</span> <i class="item_price">$1440</i></p>
                                            <p><a onclick="$(this).closest('form').submit()" class="item_add" href="Home.jsp?Action=Add6">Add to cart</a></p> 
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            
                    <!--modal-video-->
                    <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                                </div>
                                <section>
                                    <div class="modal-body">
                                        <div class="col-md-5 modal_body_left">
                                            <img src="images/20.jpg" alt=" " class="img-responsive" />
                                        </div>
                                        <div class="col-md-7 modal_body_right">
                                            <h4>a good look women's shirt</h4>
                                            <p>Ut enim ad minim veniam, quis nostrud 
                                                exercitation ullamco laboris nisi ut aliquip ex ea 
                                                commodo consequat.Duis aute irure dolor in 
                                                reprehenderit in voluptate velit esse cillum dolore 
                                                eu fugiat nulla pariatur. Excepteur sint occaecat 
                                                cupidatat non proident, sunt in culpa qui officia 
                                                deserunt mollit anim id est laborum.</p>
                                            <div class="rating">
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                            <div class="modal_body_right_cart simpleCart_shelfItem">
                                                <p><span>$320</span> <i class="item_price">$250</i></p>
                                                <p><a class="item_add" href="#">Add to cart</a></p>
                                            </div>
                                            <h5>Color</h5>
                                            <div class="color-quality">
                                                <ul>
                                                    <li><a href="#"><span></span>Red</a></li>
                                                    <li><a href="#" class="brown"><span></span>Yellow</a></li>
                                                    <li><a href="#" class="purple"><span></span>Purple</a></li>
                                                    <li><a href="#" class="gray"><span></span>Violet</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                    <div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                                </div>
                                <section>
                                    <div class="modal-body">
                                        <div class="col-md-5 modal_body_left">
                                            <img src="images/63.jpg" alt=" " class="img-responsive" />
                                        </div>
                                        <div class="col-md-7 modal_body_right">
                                            <h4>a good look black women's jeans</h4>
                                            <p>Ut enim ad minim veniam, quis nostrud 
                                                exercitation ullamco laboris nisi ut aliquip ex ea 
                                                commodo consequat.Duis aute irure dolor in 
                                                reprehenderit in voluptate velit esse cillum dolore 
                                                eu fugiat nulla pariatur. Excepteur sint occaecat 
                                                cupidatat non proident, sunt in culpa qui officia 
                                                deserunt mollit anim id est laborum.</p>
                                            <div class="rating">
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                            <div class="modal_body_right_cart simpleCart_shelfItem">
                                                <p><span>$320</span> <i class="item_price">$250</i></p>
                                                <p><a class="item_add" href="#">Add to cart</a></p>
                                            </div>
                                            <h5>Color</h5>
                                            <div class="color-quality">
                                                <ul>
                                                    <li><a href="#"><span></span>Red</a></li>
                                                    <li><a href="#" class="brown"><span></span>Yellow</a></li>
                                                    <li><a href="#" class="purple"><span></span>Purple</a></li>
                                                    <li><a href="#" class="gray"><span></span>Violet</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                    <div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                                </div>
                                <section>
                                    <div class="modal-body">
                                        <div class="col-md-5 modal_body_left">
                                            <img src="images/23.jpg" alt=" " class="img-responsive" />
                                        </div>
                                        <div class="col-md-7 modal_body_right">
                                            <h4>a good look women's Watch</h4>
                                            <p>Ut enim ad minim veniam, quis nostrud 
                                                exercitation ullamco laboris nisi ut aliquip ex ea 
                                                commodo consequat.Duis aute irure dolor in 
                                                reprehenderit in voluptate velit esse cillum dolore 
                                                eu fugiat nulla pariatur. Excepteur sint occaecat 
                                                cupidatat non proident, sunt in culpa qui officia 
                                                deserunt mollit anim id est laborum.</p>
                                            <div class="rating">
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                            <div class="modal_body_right_cart simpleCart_shelfItem">
                                                <p><span>$320</span> <i class="item_price">$250</i></p>
                                                <p><a class="item_add" href="#">Add to cart</a></p>
                                            </div>
                                            <h5>Color</h5>
                                            <div class="color-quality">
                                                <ul>
                                                    <li><a href="#"><span></span>Red</a></li>
                                                    <li><a href="#" class="brown"><span></span>Yellow</a></li>
                                                    <li><a href="#" class="purple"><span></span>Purple</a></li>
                                                    <li><a href="#" class="gray"><span></span>Violet</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                    <div class="modal video-modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModal3">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                                </div>
                                <section>
                                    <div class="modal-body">
                                        <div class="col-md-5 modal_body_left">
                                            <img src="images/24.jpg" alt=" " class="img-responsive" />
                                        </div>
                                        <div class="col-md-7 modal_body_right">
                                            <h4>a good look women's Sandal</h4>
                                            <p>Ut enim ad minim veniam, quis nostrud 
                                                exercitation ullamco laboris nisi ut aliquip ex ea 
                                                commodo consequat.Duis aute irure dolor in 
                                                reprehenderit in voluptate velit esse cillum dolore 
                                                eu fugiat nulla pariatur. Excepteur sint occaecat 
                                                cupidatat non proident, sunt in culpa qui officia 
                                                deserunt mollit anim id est laborum.</p>
                                            <div class="rating">
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                            <div class="modal_body_right_cart simpleCart_shelfItem">
                                                <p><span>$320</span> <i class="item_price">$250</i></p>
                                                <p><a class="item_add" href="#">Add to cart</a></p>
                                            </div>
                                            <h5>Color</h5>
                                            <div class="color-quality">
                                                <ul>
                                                    <li><a href="#"><span></span>Red</a></li>
                                                    <li><a href="#" class="brown"><span></span>Yellow</a></li>
                                                    <li><a href="#" class="purple"><span></span>Purple</a></li>
                                                    <li><a href="#" class="gray"><span></span>Violet</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                    <div class="modal video-modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModal4">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                                </div>
                                <section>
                                    <div class="modal-body">
                                        <div class="col-md-5 modal_body_left">
                                            <img src="images/22.jpg" alt=" " class="img-responsive" />
                                        </div>
                                        <div class="col-md-7 modal_body_right">
                                            <h4>a good look women's Necklace</h4>
                                            <p>Ut enim ad minim veniam, quis nostrud 
                                                exercitation ullamco laboris nisi ut aliquip ex ea 
                                                commodo consequat.Duis aute irure dolor in 
                                                reprehenderit in voluptate velit esse cillum dolore 
                                                eu fugiat nulla pariatur. Excepteur sint occaecat 
                                                cupidatat non proident, sunt in culpa qui officia 
                                                deserunt mollit anim id est laborum.</p>
                                            <div class="rating">
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                            <div class="modal_body_right_cart simpleCart_shelfItem">
                                                <p><span>$320</span> <i class="item_price">$250</i></p>
                                                <p><a class="item_add" href="#">Add to cart</a></p>
                                            </div>
                                            <h5>Color</h5>
                                            <div class="color-quality">
                                                <ul>
                                                    <li><a href="#"><span></span>Red</a></li>
                                                    <li><a href="#" class="brown"><span></span>Yellow</a></li>
                                                    <li><a href="#" class="purple"><span></span>Purple</a></li>
                                                    <li><a href="#" class="gray"><span></span>Violet</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                    <div class="modal video-modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModal5">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                                </div>
                                <section>
                                    <div class="modal-body">
                                        <div class="col-md-5 modal_body_left">
                                            <img src="images/35.jpg" alt=" " class="img-responsive" />
                                        </div>
                                        <div class="col-md-7 modal_body_right">
                                            <h4>a good look women's Jacket</h4>
                                            <p>Ut enim ad minim veniam, quis nostrud 
                                                exercitation ullamco laboris nisi ut aliquip ex ea 
                                                commodo consequat.Duis aute irure dolor in 
                                                reprehenderit in voluptate velit esse cillum dolore 
                                                eu fugiat nulla pariatur. Excepteur sint occaecat 
                                                cupidatat non proident, sunt in culpa qui officia 
                                                deserunt mollit anim id est laborum.</p>
                                            <div class="rating">
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                            <div class="modal_body_right_cart simpleCart_shelfItem">
                                                <p><span>$320</span> <i class="item_price">$250</i></p>
                                                <p><a class="item_add" href="#">Add to cart</a></p>
                                            </div>
                                            <h5>Color</h5>
                                            <div class="color-quality">
                                                <ul>
                                                    <li><a href="#"><span></span>Red</a></li>
                                                    <li><a href="#" class="brown"><span></span>Yellow</a></li>
                                                    <li><a href="#" class="purple"><span></span>Purple</a></li>
                                                    <li><a href="#" class="gray"><span></span>Violet</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                    <div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                                </div>
                                <section>
                                    <div class="modal-body">
                                        <div class="col-md-5 modal_body_left">
                                            <img src="images/39.jpg" alt=" " class="img-responsive" />
                                        </div>
                                        <div class="col-md-7 modal_body_right">
                                            <h4>a good look women's Long Skirt</h4>
                                            <p>Ut enim ad minim veniam, quis nostrud 
                                                exercitation ullamco laboris nisi ut aliquip ex ea 
                                                commodo consequat.Duis aute irure dolor in 
                                                reprehenderit in voluptate velit esse cillum dolore 
                                                eu fugiat nulla pariatur. Excepteur sint occaecat 
                                                cupidatat non proident, sunt in culpa qui officia 
                                                deserunt mollit anim id est laborum.</p>
                                            <div class="rating">
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star-.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="rating-left">
                                                    <img src="images/star.png" alt=" " class="img-responsive" />
                                                </div>
                                                <div class="clearfix"> </div>
                                            </div>
                                            <div class="modal_body_right_cart simpleCart_shelfItem">
                                                <p><span>$320</span> <i class="item_price">$250</i></p>
                                                <p><a class="item_add" href="#">Add to cart</a></p>
                                            </div>
                                            <h5>Color</h5>
                                            <div class="color-quality">
                                                <ul>
                                                    <li><a href="#"><span></span>Red</a></li>
                                                    <li><a href="#" class="brown"><span></span>Yellow</a></li>
                                                    <li><a href="#" class="purple"><span></span>Purple</a></li>
                                                    <li><a href="#" class="gray"><span></span>Violet</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //banner-bottom -->

        <!-- banner-bottom1 -->

        <div class="footer-copy">
			
			<div class="container">
				<p>&copy; 2018 Women's Fashion. By Naruapol Putragul | Design by Man</p>
			</div>
		</div>
        <!-- //footer -->
    </body>
</html>