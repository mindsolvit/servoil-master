/*$('document').ready(function () {
    $('.item_name_servo').change(function(){
    	
    	var item_id=$( ".item_name_servo" ).val();
    	var urlProductDetails ="getProductDetails?productId="
    		+ item_id + "";
    	
    	$.ajax({
    		type : "GET",
    		url : urlProductDetails,
    		cache : false, // Please keep this to make fresh service call every time
    		//dataType:"text",
    		success : function(result) {
    			$('#indent').dataTable({
    				"data" : result,
    				"retrieve": true,
    				"responsive": true,
    				"columns" : [ {
    					"data" : 'id'
    				}, {
    					"data" : 'skucode'
    				}, {
    					"data" : 'itemname'
    				}, {
    					"data" : 'salesprice'
    				}, {
    					  "data" : 'productamount'
    				}, {
    					"data" : 'quantity'
    				} ]
    			});
    			
    		}
    	});
    	
    	
    	 
    	 * {"id":"29ab119a-6b39-11e4-8cfe-d4c9efef7953","skucode":"2900175","itemname":"2T 20*1/2 Ltr 03/09",
    	 * "salesprice":"2071.27","productamount":"134.00","quantity":"","orgid_fk":null}
    	 *  
    	 *  
    	 *  $('#indent').dataTable( {
    		  "ajax": {
    			    "url": urlProductDetails,
    			    "data": {
    			        "id": id,
    			        "skucode": da,
    			        "itemname": itemname,
    			        "salesprice":salesprice,
    			    }
    			  }
    	        		
    	    } ); 
    	
    	 
    		$.ajax({
    			type : "GET",
    			url : urlProductDetails,
    			cache : false, // Please keep this to make fresh service call every time
    			success : function(result) {
    			var productamt=result.productamount;
    			var productitemname=result.itemname;
    			var productsalesprice=result.salesprice;
    			var productproductamount=result.productamount;
				var out;
 		    
    		    
    		    out += "<form action='' method='POST'>" +
    	        
    	        "</td><td class='selector' align='left' > <input type='Hidden' name='item_name[]' value="+ productsalesprice +" id='itemName' align='left'>" +
    	        productsalesprice +
    	        "</td></td><td class='selector' align='left' > <input type='Hidden' name='item_MRP[]' value="+ productamt +" id='itemMeasure'>" +
    	        productamt +
    	        "</td><td class='selector' align='left' > <input type='text'  name='item_Quantity[]' value='' id='itemqty' style='height:21px;'>" +
    	         +
    	        "<td class='selector' align='left' > <textarea rows='3' cols='20' id='remark' name='remarks'></textarea></td><td><input type='button' name='submit' value='Add To Indent' class='btn btn-lg btn-primary btn-block mytableinfo' id='addRow' style='margin-top:0px;padding: 3px 3px;'></td></tr>";				
    		    
    	        out += "</tbody></form>";
    		    
    		   
    	    document.getElementById("productsalesprice").innerHTML = out;

    		    
    			
    			},
    			error : function(xhr, status, error) {
    			alert("error while request. retry");
    			}
    			});	
    		
    	
    	
	 
	}); 
});*/
function loadIndentItem(){
	var item_id=$( ".item_name_servo" ).val();
	var urlProductDetails ="getProductDetails?productId="
		+ item_id + "";
	$("#indent-div").show();
	$.ajax({
		type : "GET",
		url : urlProductDetails,
		cache : false, // Please keep this to make fresh service call every time
		//dataType:"text",
		success : function(result) {
			alert("Result ====  "+result);
			$("#skuCode").text(result.skucode);
			$("#itemName").text(result.itemname);
			$("#pricePerPack").text(result.salesprice);
			$("#mrp").text(result.productamount);
			$("#qty").text(result.quantity);
		}
	});
}

function loadIndentItem123(){
	var item_id=$( ".item_name_servo" ).val();
	var urlProductDetails ="getProductDetails?productId="
		+ item_id + "";
	
	$.ajax({
		type : "GET",
		url : urlProductDetails,
		cache : false, // Please keep this to make fresh service call every time
		//dataType:"text",
		success : function(result) {
			$('#indent').dataTable({
				"data" : result,
				"retrieve": true,
				"dataType": 'json',
				/*"responsive": true,*/
				"columns" : [ {
					"data" : 'id'
				}, {
					"data" : 'skucode'
				}, {
					"data" : 'itemname'
				}, {
					"data" : 'salesprice'
				}, {
					"data" : 'productamount'
				}, {
					"data" : 'quantity'
				}, {
					"data" : 'orgid_fk'
				} ],
				 "columnDefs": [
				                {
				                    "targets": [ 5 ],
				                    "visible": false
				                },
				                {
				                    "targets": [ 6 ],
				                    "visible": false
				                }
				            ]
			});
			
		}
	});
}