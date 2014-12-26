<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form commandName="product" method="post" action="save-products">
	<table>
	
		<tr>
			<td class="tdLabel">
				<label>SKU CODE</label>
			</td>
			<td  class="tdField">
				<form:input path="skucode"/>
				
			</td>
		</tr>
		
		
		<tr>
			<td class="tdLabel">
				<label>ITEM NAME</label>
			</td>
			<td  class="tdField">
				<form:input path="itemname"/>
				
			</td>
		</tr>
		
		<tr>
			<td class="tdLabel">
				<label>SALES PRICE</label>
			</td>
			<td  class="tdField">
				<form:input path="salesprice"/>
				
			</td>
		</tr>
		
		
		
		<tr>
			<td class="tdLabel">
				<label>PRODUCT AMOUNT</label>
			</td>
			<td  class="tdField">
				<form:input path="productamount"/>
				
			</td>
		</tr>
		
		
		<tr>
			<td class="tdLabel">
				<label>QUANTITY</label>
			</td>
			<td  class="tdField">
				<form:input path="quantity"/>
				
			</td>
		</tr>
		
		
		<tr>
			<td class="tdLabel">
				<label>QUANTITY</label>
			</td>
			<td  class="tdField">
				<form:input path="quantity"/>
				
			</td>
		</tr>
		
		
	<div class="">
		<input class="Button" type="submit" name="addProduct" id="addProduct" value=" Save "> 
	</div>	
	
	</table>

</form:form>
</body>
</html>