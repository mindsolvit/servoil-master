<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="resources/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
	
</head>
<body>
			<hr>
				Test Data Table Call
			<hr>
					<select id="productIndent" class="item_name_servo">
	            		<option value="--Please Select--">--Please Select--</option>
	            		<c:forEach items="${productList}" var="product" >
	            		<option value="${product.id }" >${product.itemname}</option>
	            		</c:forEach>
	            	</select>	
   					<input type="button" value="Load Item" onclick="loadIndentItem()"/>
			<hr>
			<br>
					   <table class="table" id="indent">
						  <thead>
								  <tr>
								  	<th align="centre">Item Id</th>
								  	<th align="centre">SKU Code</th>
									<th align="centre">Item Name</th>
									<th align="centre">SalesPrice PerPack</th>
									<th align="centre">MRP</th>
									<th align="centre">Quantity</th>
									
									<!-- <th align="centre">Remark</th>
									<th align="centre"></th> -->
								  </tr>
							</thead>
							 <tbody id="id01">
								<tr class="mytableinfo">
									<td align="left"></td>
									<td align="left"></td>
									<td align="left"></td>
									<td align="left"></td>
									<td align="left"></td>
									<td align="left"></td>
									
								</tr>
	  						</tbody>
						</table>
			<hr>

    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.dataTables.js"></script>
	<script src="resources/js/indent-item.js"></script>
</body>
</html>