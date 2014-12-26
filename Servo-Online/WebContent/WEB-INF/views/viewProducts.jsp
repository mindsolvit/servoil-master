<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Services | Corlate</title>
    
    <!-- core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="resources/css/animate.min.css" rel="stylesheet">
    <link href="resources/css/main.css" rel="stylesheet">
    <link href="resources/css/responsive.css" rel="stylesheet">
	<link href="resources/css/jquery.motionCaptcha.0.2.css" rel="stylesheet">
    <style type="text/css">
		label{
			text-align:right;
		}
		
		.input span{
			margin-left:15px;
		}
		
	</style>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  +0123 456 70 90</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                       <div class="social">
                            <ul class="social-share">
                               <!--  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li> -->
								<li><a href="login.jsp" style="width: 90px;
height: 38px;
padding: 7px;background:#c52d2f;">Login</a></li>
                            </ul>
							
                            <div class="search">
                                <form role="form" action="#" method="POST">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                           </div>
                       </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">Servoil</a>
                </div>
                
                <div class="collapse navbar-collapse navbar-right">
                    <!-- <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="about-us.html">About Us</a></li>
                        <li ><a href="services.html">Services</a></li>
                        <li><a href="portfolio.html">Portfolio</a></li>
                       
                        <li><a href="contact-us.html">Contact</a></li>                        
                    </ul> -->
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header><!--/header-->

 

   

   

  
    

    <section id="content">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 wow fadeInDown">
                       <div class="table-responsive">
                       
                        <table class="table">
					  <thead>
							  <tr>
								
								<th align="centre">Sku Code</th>
								<th align="centre">Item Name</th>
								<th align="centre">SalesPrice PerPack</th>
								
								<th align="centre"></th>
							  </tr>
						</thead>

						<tbody>
							<c:if test="${productList != null}">
							<c:forEach  items="${productList}" var="product" varStatus="pStatus">
								<tr>
									<td><c:out value="${product.skucode}" /></td>
									<td><c:out value="${product.itemname}" /></td>
									<td><c:out value="${product.salesprice}" /></td>
									<td><c:out value="${product.productamount}" /></td>
								</tr>
							</c:forEach>
							</c:if>
                       		</tbody>
                       </table>
                       
                       
					   <table class="table">
					  <thead>
							  <tr>
								
								<th align="centre">Sku Code</th>
								<th align="centre">Item Name</th>
								<th align="centre">SalesPrice PerPack</th>
								
								<th align="centre"></th>
							  </tr>
						</thead>


							<c:if test="${productList != null}">
							<c:forEach var="product" items="${productList}" varStatus="pStatus">
								<tr>
									<td><c:out value="${product.skucode}" /></td>
									<td><c:out value="${product.itemname}" /></td>
									<td><c:out value="${product.salesprice}" /></td>
									<td><c:out value="${product.productamount}" /></td>
								</tr>
							</c:forEach>
							</c:if>



							<tbody id="id01">
								<tr>
									<td align="left">2900175</td>
									<td align="left">2T 20*1/2 Ltr 03/09</td>
									<td align="left">2071.27</td>
									
									<td align="left"><input type='button' name='submit' value='View Detail' class='btn btn-lg btn-primary btn-block viewIndent detect_rel2' id='detect_rel2'></td>
           
                                 </tr>
								<tr>
									<td align="left">2900145</td>
									<td align="left">2T 200*60 Ml 03/09</td>
									<td align="left">2420.95l</td>
									
								   <td align="left"><input type='submit' name='submit' value='View Detail' class='btn btn-lg btn-primary btn-block viewIndent detect_rel2' id='detect_rel2'></td>
							  </tr>
								<tr>
									<td align="left">2900125</td>
									<td align="left">2T 300*40 Ml 03/09</td>
									<td align="left">2572.89</td>
									
								   <td align="left"><input type='submit' name='submit' value='View Detail' class='btn btn-lg btn-primary btn-block viewIndent detect_rel2' id='detect_rel2'></td>
							  </tr>
								<tr>
									<td align="left">2900103</td>
									<td align="left">2T 600*20 Ml 03/09</td>
									<td align="left">3055.01</td>
									
								   <td align="left"><input type='submit' name='submit' value='View Detail' class='btn btn-lg btn-primary btn-block viewIndent detect_rel2' id='detect_rel2'></td>
							  </tr>
								<tr>
									<td align="left">2900401</td>
									<td align="left">2T SUPREME 210 Ltr</td>
									<td align="left">42183.4</td>
								
								   <td align="left"><input type='submit' name='submit' value='View Detail' class='btn btn-lg btn-primary btn-block viewIndent detect_rel2' id='detect_rel2'></td>
							  </tr>
								<tr>
									<td align="left">2949180</td>
									<td align="left">4 T SYNTHETIC 24*1 Ltr</td>
									<td align="left">10960.12</td>
									
								   <td align="left"><input type='submit' name='submit' value='View Detail' class='btn btn-lg btn-primary btn-block viewIndent detect_rel2' id='detect_rel2'></td>
							  </tr>
								<tr>
									<td align="left">2924129</td>
									<td align="left">4T 10 X (800+100 Ml) 900 Ml 01/07</td>
									<td align="left">1695.8</td>
								
								   <td align="left"><input type='submit' name='submit' value='View Detail' class='btn btn-lg btn-primary btn-block viewIndent detect_rel2' id='detect_rel2'></td>
							  </tr>
								<tr>
									<td align="left">2924130</td>
									<td align="left">4T 20 X (800+100 Ml) 900 Ml 03/09</td>
									<td align="left">3478.94</td>
									
								   <td align="left"><input type='submit' name='submit' value='View Detail' class='btn btn-lg btn-primary btn-block viewIndent detect_rel2' id='detect_rel2'></td>
							  </tr>
								<tr>
									<td align="left">2924207</td>
									<td align="left">4T 20 X (900+100 Ml) 1 Ltr 03/09</td>
									<td align="left">3828.3</td>
									
								   <td align="left"><input type='submit' name='submit' value='View Detail' class='btn btn-lg btn-primary btn-block viewIndent detect_rel2' id='detect_rel2'></a></td>
							  </tr>
								<tr>
									<td align="left">2943650</td>
									<td align="left">4T GOBEN 10*900 Ml</td>
									<td align="left">1936</td>
									
								   <td align="left"><input type='submit' name='submit' value='View Detail' class='btn btn-lg btn-primary btn-block viewIndent detect_rel2' id='detect_rel2'></a></td>
							  </tr>
									  <div id="indentDetails" style="position: absolute;
												top: 81px;
												left: 20%;
												background: #f7f7f7;
												border: 10px solid #4e4e4e;display:none;width:60%;">
											<div class="col-md-12 col-sm-6" style="">
												<h2 align="center"> Detail Indent View </h2>
												<hr>
													<div class="col-md-12 col-sm-6 register"  id="register_div1" style="padding:30px;">
														<div class="col-md-12 col-sm-6 register alert-danger "  id="register_div1" >
															<div class="input" class="col-md-6 col-sm-6">	
																<label style="float:left; width:200px;">SKU Code </label>
															</div>
															<div class="input" class="col-md-6 col-sm-6">
																 <span style="font-size: 1.2em; float:left;" >2900175</span><br>
															</div>
														</div>	
														<div class="col-md-12 col-sm-6 register"  id="register_div1" >
															<div class="input" class="col-md-6 col-sm-6" >	
																<label style="float:left; width:200px;">Item Name </label>
															</div>
															<div class="input" class="col-md-6 col-sm-6">
																 <span style="font-size: 1.2em; float:left;" >2T 20*1/2 Ltr 03/09</span><br>
															</div>
														</div>	
														<div class="col-md-12 col-sm-6 register alert-danger"  id="register_div1" >
															<div class="input" class="col-md-6 col-sm-6" >	
																<label style="float:left; width:200px;">SalesPrice PerPack </label>
															</div>
															<div class="input" class="col-md-6 col-sm-6">
																 <span style="font-size: 1.2em; float:left;" >2071.27</span><br>
															</div>
														</div>	
														<div class="col-md-12 col-sm-6 register"  id="register_div1" >
															<div class="input" class="col-md-6 col-sm-6" >	
																<label style="float:left; width:200px;">MRP </label>
															</div>
															<div class="input" class="col-md-6 col-sm-6">
																 <span style="font-size: 1.2em; float:left;" >134</span><br>
															</div>
														</div>	
														
														
														
													</div>
												<div class="input" align="center">	
											    <input type="button" value="Close" id="closeIndent"> </div>

											</div><br>
						
										</div>
		                </div>
						        </tbody>

					  </table>
					</div>        
                </div><!--/.col-sm-6-->

              

            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#content-->


    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Faq</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.prettyPhoto.js"></script>
    <script src="resources/js/jquery.isotope.min.js"></script>
    <script src="resources/js/main.js"></script>
    <script src="resources/js/wow.min.js"></script>
	
	<script type="text/javascript">
$(document).ready(function(){
	$(".viewIndent").click(function(){
		$("#indentDetails").show();
	});
	$("#closeIndent").click(function(){
		$("#indentDetails").hide();
	});
	});
</script>
	</script>
</body>
</html>