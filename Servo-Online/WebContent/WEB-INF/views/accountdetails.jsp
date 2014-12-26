<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
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
	<link href="resources/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
    
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
	<style type="text/css">
		input#itemqty {
		width: 65px;
		}		
	</style>
	<style>
			.indent-details{
				list-style-type: none;
				text-align: left;
			}
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
padding: 7px;background:#c52d2f;">Logout</a></li>
                            </ul>
							
                            <div class="search">
                                <form role="form" action="#" method="POST" >
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
                 
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
        
    </header><!--/header-->

    <section id="feature" class="transparent-bg">
        <div class="container">
           <div class="center wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                <div class="container">
    <div class="row">
        
        <div  class="col-xs-12 col-sm-12 wow fadeInDown">
			 <div class="col-md-3 col-sm-6">
				 <div class="mini-submenu">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</div>
                   <div class="list-group">
							<span href="#" class="list-group-item active">
								Account Details
								<span class="pull-right" id="slide-submenu">
									<i class="fa fa-times"></i>
								</span>
							</span>
									<a href="accountdetails.jsp" class="list-group-item"  style="background-color: #f5f5f5;">
								    <div align="left">View Items</div>
									</a>
									<a href="indentpage.jsp"" class="list-group-item">
								    <div align="left">Indent Details</div>
									</a>
									<a href="recentlyplacedindents.jsp"" class="list-group-item">
								    <div align="left"> View Recently Placed Indents</div>
								    </a>
							        <a href="Cancelled_indents.jsp"" class="list-group-item">
							        <div align="left"> Cancelled Indents </div>
									</a>
							        <a href="Deleted_indents.jsp"" class="list-group-item">
						            <div align="left"> Deleted Indents</div>
							       </a>
                    </div>  
            </div><!--/.col-md-3-->
            <div class="col-md-9 col-sm-6">
            	<div class="col-md-12 col-sm-6">
            		 <select id="productIndent" class="item_name_servo">
		           		<option value="--Please Select--">--Please Select--</option>
		           		<c:forEach items="${productList}" var="product" >
		           		<option value="${product.id }" >${product.itemname}</option>
		           		</c:forEach>
		           	</select>	
            		<input type="button" value="Load Item" onclick="loadIndentItem()"/>
            	</div>
            	<div class="col-md-12 col-sm-6" style="display:none;" id="indent-div">	  
	            	<div class="col-xs-6 col-sm-6 ">
					<ul class="indent-details">
						<li>
							<label>
								Sku Code :	
							</label>
							<span id="skuCode">
							</span>
						</li>
						<li>
							<label>
								Item Name :	
							</label>
							<span id="itemName">
							</span>
						</li>
						<li>
							<label>
								SalesPrice PerPack :	
							</label>
							<span id="pricePerPack">
							</span>
						</li>
						<li>
							<label>
								Mrp :	
							</label>
							<span id="mrp">
							</span>
						</li>
					</ul>	
				</div>
					<div class="col-xs-6 col-sm-6 ">
						<ul  class="indent-details">
						<li>
							<label>
								Quantity :	
							</label>
							<span id="">
								<input type="text" name="qty" id="qty">
							</span>
						</li>
						<li>
							<label>
								Total :	
							</label>
							<span id="">
								<input type="text" name="total" id="total">	
							</span>
						</li>
						<li>
							<label>
								Remarks :	
							</label>
							<span id="">
								<textarea cols="20" rows="" required="required" name="remarks" id="remarks"></textarea>
							</span>
						</li>
						<li>
							<label>
								Action
							</label>
							<span id="action">
								<input type="submit" value="Add Item">
							</span>
						</li>
					</ul>	
					</div>	
				</div>
            </div>
           
 			
 			
        </div>
		
		<div class=" col-xs-12 col-md-12">
			
		
		</div>
		
		
		 <div  class="col-xs-12 col-sm-12 wow fadeInDown" id="proceed" style="display:none;">
			 <div class="table-responsive" >
						   <table class="table" id="example">
							  <thead>
									  <tr>
										<th align="centre">Sku Code</th>
										<th align="centre">Item Name</th>
										<th align="centre">SalesPrice PerPack</th>
										<th align="centre">MRP</th>
										<th align="centre">Quantity</th>
										<th align="centre">Total</th>
										<th align="centre">Remark</th>
										<th align="centre">Action</th>
										
									  </tr>
								</thead>
								 <tbody id="id02">
								 
								 </tbody>
						  </table>
			</div>				
				 <div align="center">			 
					 <input type='submit' name='submit' value='Save And Proceed'  class='btn btn-lg btn-primary btn-block mytableinfo' style="width:150px;" >
				  </div>  
		 </div>
      
    </div>

			    </div>
		</div>
        </div>

            


           

    </section><!--/#feature-->



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
	<script src="resources/js/jquery.motionCaptcha.0.2.js"></script>
	<%-- <script src="resources/js/jquery.min.js"></script> --%>
	<script src="resources/js/jquery.dataTables.js"></script>
	<script src="resources/js/indent-item.js"></script>

	
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
<%--
<script>
$(document).ready(function(){
	$("select.hear_about_us").change(function(){ 

var v = $(this).val();
if(v!=""){
var xmlhttp = new XMLHttpRequest();
var url = "skudetails.txt";

xmlhttp.onreadystatechange=function() {
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        myFunction(xmlhttp.responseText);
    }
}
xmlhttp.open("GET", url, true);
xmlhttp.send();

function myFunction(response) {
    var arr = JSON.parse(response);
    var i;
    var out = "<tbody>";

    for(i = 0; i < arr.length; i++) {
        out += "<form action='' method='POST'><tr class='mytableinfo'><td class='selector' align='left'><select class='hear_about_us' id='itemCode'><option value="+arr[i].Sku_Code+">"+arr[i].Sku_Code+"</option><option value='2900183'>2900183</option><option value='2900177'>2900177</option><option value='2900178'>2900178</option><option value='2900179'>2900179</option></select>" +
        
        "</td><td class='selector' align='left' > <input type='Hidden' name='item_name[]' value="+ arr[i].Item_Name +" id='itemName' align='left'>" +
        arr[i].Item_Name +
        "</td><td class='selector' align='left' > <input type='Hidden' name='item_salesprice[]' value="+ arr[i].SalesPrice_PerPack +" id='itemPrice'>" +
        arr[i].SalesPrice_PerPack +
        "</td><td class='selector' align='left' > <input type='Hidden' name='item_MRP[]' value="+ arr[i].MRP +" id='itemMeasure'>" +
        arr[i].MRP +
        "</td><td class='selector' align='left' > <input type='text'  name='item_Quantity[]' value='' id='itemqty' style='height:21px;'>" +
        arr[i].Quantity +
        "<td class='selector' align='left' > <textarea rows='3' cols='20' id='remark' name='remarks'></textarea></td><td><input type='button' name='submit' value='Add To Indent' class='btn btn-lg btn-primary btn-block mytableinfo' id='addRow' style='margin-top:0px;padding: 3px 3px;'></td></tr>";
    }
    out += "</tbody></form>"
    document.getElementById("id01").innerHTML = out;
}
	}
	});
});
</script>--%>

</body>
</html>






