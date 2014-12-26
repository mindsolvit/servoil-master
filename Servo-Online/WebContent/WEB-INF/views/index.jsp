<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Services | Corlate</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
    <!-- core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="resources/css/animate.min.css" rel="stylesheet">
    <link href="resources/css/main.css" rel="stylesheet">
    <link href="resources/css/responsive.css" rel="stylesheet">
	<link href="resources/css/jquery.motionCaptcha.0.2.css" rel="stylesheet">
	<link href="//cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css" rel="stylesheet">
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
								<li><a href="login.html" style="width: 90px;
height: 38px;
padding: 7px;">Login</a></li>
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
                    <a class="navbar-brand" href="index.html">Servo oil</a>
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

    <section id="feature" class="transparent-bg">
        <div class="container">
           <div class="center wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                <div class="container">
       <div class="row">
       
         
                  <div class="col-md-3 col-sm-6">
				  <div class="mini-submenu">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </div>
                   
                </div><!--/.col-md-3-->
				
				
				<div class="table-responsive">
					   <table class="table" id="example">
					  <thead>
							  <tr>
								
								<th align="centre">Sku Code</th>
								<th align="centre">Item Name</th>
								<th align="centre">SalesPrice PerPack</th>
								<th align="centre" style="display:none;"></th>
								<th align="centre" style="display:none;"></th>
								<th align="centre" style="display:none;"></th>
							  </tr>
						</thead>
							 <tbody id="id01">
								 <c:if test="${productList != null}">
									<c:forEach items="${productList}" var="product"
										varStatus="pStatus">
										<tr id="#row-42">
											<td id="sku_code_id"><c:out  value="${product.skucode}" /></td>
											<td align="left"><c:out value="${product.itemname}" /></td>
											<td align="left"><c:out value="${product.salesprice}" /></td>
											<td align="left" style="display:none;"><c:out value="${product.productamount}" /></td>
											<td align="left" style="display:none;"><c:out value="${product.quantity}" /></td>
											<td align="left"><input type='submit' name='submit'
										value='View Detail'
										class='btn btn-lg btn-primary btn-block viewIndent detect_rel2 view_details_all'
										id='detect_rel2'></td>
										</tr>
									</c:forEach>
								</c:if>
		  <div id="indentDetails" style="position: fixed;
top: 81px;
left: 20%;
background: #f7f7f7;
border: 10px solid #4e4e4e;display:none;width:60%;z-index:99">
				<div class="col-md-12 col-sm-6" style="">
					<h2> Detail Indent View </h2>
					<hr>
				<div class="col-md-12 col-sm-6 register"  id="register_div1" style="padding:30px;">
					<div class="col-md-12 col-sm-6 register alert-danger "  id="register_div1" >
						<div class="input" class="col-md-6 col-sm-6">	
							<label style="float:left; width:200px;">SKU Code </label>
						</div>
						<div class="input" class="col-md-6 col-sm-6">
							 <span style="font-size: 1.2em; float:left;" id="sku_code_id"></span><br>
						</div>
					</div>	
					<div class="col-md-12 col-sm-6 register"  id="register_div1" >
						<div class="input" class="col-md-6 col-sm-6" >	
							<label style="float:left; width:200px;">Item Name </label>
						</div>
						<div class="input" class="col-md-6 col-sm-6">
							 <span style="font-size: 1.2em; float:left;" id="item_name_id"></span><br>
						</div>
					</div>	
					<div class="col-md-12 col-sm-6 register alert-danger"  id="register_div1" >
						<div class="input" class="col-md-6 col-sm-6" >	
							<label style="float:left; width:200px;">SalesPrice PerPack </label>
						</div>
						<div class="input" class="col-md-6 col-sm-6">
							 <span style="font-size: 1.2em; float:left;" id="sales_perpack_id"></span><br>
						</div>
					</div>	
					<div class="col-md-12 col-sm-6 register"  id="register_div1" >
						<div class="input" class="col-md-6 col-sm-6" >	
							<label style="float:left; width:200px;">MRP </label>
						</div>
						<div class="input" class="col-md-6 col-sm-6">
							 <span style="font-size: 1.2em; float:left;" id="mrp_id"></span><br>
						</div>
					</div>	
					<div class="col-md-12 col-sm-6 register alert-danger"  id="register_div1" >
						<div class="input" class="col-md-6 col-sm-6" >	
							<label style="float:left; width:200px;" >Quantity </label>
						</div>
						<div class="input" class="col-md-6 col-sm-6">
							 <span style="font-size: 1.2em; float:left;" id="quantity_id"></span><br>
						</div>
					</div>	
					
					
								</div>
					<div class="input">	
				 <input type="button" value="Close" id="closeIndent"> </div>

								</div>
											
								<br>

								
									</div>
		  </div>
							</tbody>
							
							





					  </table>
					</div>
</div>
               
         
        
        
    </div>
</div>
            </div>

            


           

        </div><!--/.container-->
    </section><!--/#feature-->


    <!-- <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">We are hiring</a></li>
                            <li><a href="#">Meet the team</a></li>
                            <li><a href="#">Copyright</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>    
                </div>

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Documentation</a></li>
                            <li><a href="#">Refund policy</a></li>
                            <li><a href="#">Ticket system</a></li>
                            <li><a href="#">Billing system</a></li>
                        </ul>
                    </div>    
                </div>

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Developers</h3>
                        <ul>
                            <li><a href="#">Web Development</a></li>
                            <li><a href="#">SEO Marketing</a></li>
                            <li><a href="#">Theme</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Email Marketing</a></li>
                            <li><a href="#">Plugin Development</a></li>
                            <li><a href="#">Article Writing</a></li>
                        </ul>
                    </div>    
                </div>

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Our Partners</h3>
                        <ul>
                            <li><a href="#">Adipisicing Elit</a></li>
                            <li><a href="#">Eiusmod</a></li>
                            <li><a href="#">Tempor</a></li>
                            <li><a href="#">Veniam</a></li>
                            <li><a href="#">Exercitation</a></li>
                            <li><a href="#">Ullamco</a></li>
                            <li><a href="#">Laboris</a></li>
                        </ul>
                    </div>    
                </div>
            </div>
        </div>
    </section> -->

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
   
	<script src="resources/js/jquery.min.js"></script>
	<script src="//cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
</body>
</html>
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
<script>
$(function(){

	$('#slide-submenu').on('click',function() {			        
        $(this).closest('.list-group').fadeOut('slide',function(){
        	$('.mini-submenu').fadeIn();	
        });
        
      });

	$('.mini-submenu').on('click',function(){		
        $(this).next('.list-group').toggle('slide');
        $('.mini-submenu').hide();
	})
})

</script>


<style>
.mini-submenu{
  display:none;  
  background-color: rgba(0, 0, 0, 0);  
  border: 1px solid rgba(0, 0, 0, 0.9);
  border-radius: 4px;
  padding: 9px;  
  /*position: relative;*/
  width: 42px;

}

.mini-submenu:hover{
  cursor: pointer;
}

.mini-submenu .icon-bar {
  border-radius: 1px;
  display: block;
  height: 2px;
  width: 22px;
  margin-top: 3px;
}

.mini-submenu .icon-bar {
  background-color: #000;
}

#slide-submenu{
  background: rgba(0, 0, 0, 0.45);
  display: inline-block;
  padding: 0 8px;
  border-radius: 4px;
  cursor: pointer;
}
</style>

<script>
$(document).ready(function(){
var counter = 2;

$('.selector').click(function(){return false;});
$(".mytableinfo").click(function() {

    var tableData = $(this).children("td").map(function() {
        return $(this).text();
    }).get();

    alert("Your data is: " + $.trim(tableData[0]) + " , " + $.trim(tableData[1]) + " , " + $.trim(tableData[2])+ " , " + $.trim(tableData[3])+ " , " + $.trim(tableData[4]));
	
	
var element_div1 = "<section id=feature"+ counter + " class='transparent-bg'><div class='container' id=#new><div class='center wow fadeInDown' data-wow-duration='1000ms' data-wow-delay='600ms'><div class='table-responsive'><table class='table'><thead><tr><th align='centre'>&nbsp;&nbsp;Sku Code</th><th align='centre'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Item Name</th><th align='centre'>&nbsp;&nbsp;SalesPrice PerPack</th><th align='centre'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MRP</th><th align='centre'>Quantity</th><th align='centre'></th></tr></thead><tbody><tr class='mytableinfo'><td class='selector'>" + $.trim(tableData[0]) + "</td><td class='selector'>" + $.trim(tableData[1]) + "</td><td class='selector'>" + $.trim(tableData[2]) + "</td><td class='selector'>" + $.trim(tableData[3]) + "</td><td class='selector'>" + $.trim(tableData[4]) + "</td><td><input type='submit' name='submit' value='Cancel' class='btn btn-lg btn-primary btn-block detect_rel' ></td></tr></tbody></table></div></div></div></section>";  
	
	
	 $("section#feature").append(element_div1); 
	 counter++;
	 
});



});
$(document).ready(function(){
    var table = $('#example').DataTable();
	$("#example tbody tr").click(function () {
var row_data=table.row( this ).data() ;

document.getElementById("sku_code_id").innerHTML=row_data[0];
document.getElementById("item_name_id").innerHTML=row_data[1];
document.getElementById("sales_perpack_id").innerHTML=row_data[2];
document.getElementById("mrp_id").innerHTML=row_data[3];
document.getElementById("quantity_id").innerHTML=row_data[4];
});
	});
	</script>
	
	