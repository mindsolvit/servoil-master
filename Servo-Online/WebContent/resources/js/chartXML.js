			var xmlhttp;
	   		xmlhttp = new XMLHttpRequest();
	   		if ( typeof xmlhttp.overrideMimeType != 'undefined') { 
	   		    xmlhttp.overrideMimeType('text/xml'); 
	   		  }
	   		 
	   		 
	   		 function getXmlfromJqueryAjax(payerAccId,linkedAccId)
	   		 {
	 		//	 alert("In JQuery Ajax Function");
	   			 var urlStr = "http://localhost:8080/GravitantCloudAnalytics/getCurrentMonthSummaryDataXML/linkedAccount?linkedAccountId="+linkedAccId+"&payerAccountId="+payerAccId+"";
			//	 var urlStr = "http://23.22.132.29:8080/GravitantCloudAnalytics/getCurrentMonthSummaryDataXML/linkedAccount?linkedAccountId="+linkedAccId+"&payerAccountId="+payerAccId+"";
			//	 var urlStr = "https://54.85.174.221/GravitantCloudAnalytics/getCurrentMonthSummaryDataXML/linkedAccount?linkedAccountId="+linkedAccId+"&payerAccountId="+payerAccId+"";
				 
			//alert(urlStr);
	   			
	   			   $.ajax(
	   					  	 {  
	   					  	   url:urlStr,
	   					  	   cache:false,   // Please keep this to make fresh service call every time
	   					  	   dataType:"text",
	   						   success:function(result) {formFusionChart(result);},
	   					       error:function(xhr,status,error) {alert("Please log-in again");}
	   					     }
	   					  );
	   			 
	   		 }
	   		 
	   		/* function formFusionChart(xmlDataString)
	   		 {	
	   			 var myChart = new FusionCharts( "resources/thirdParty/fsChart/MultiAxisLine.swf", 
		                    "myChartId", "950", "500", "0");
				 myChart.setDataXML(xmlDataString);		     
		      	 myChart.render("chartContainer"); 	
	   		 }*/
	   		 
	   		 
	   		 function formFusionChart(xmlDataString)
	   		 {	
	   			FusionCharts.debugMode.enabled(true);
	   			var myChart = new FusionCharts( "MultiAxisLine","myChartId", "950", "500", "0");
	   			 myChart.setDataXML(xmlDataString);		   
	   	      	 myChart.render("chartContainer"); 	
	   		 }
	   		 
	   		 
	   		function getItemList( linkedItem)
	   		{
	   			
	   			var parent_url = window.location.href;
	   			
	   	    	var res = linkedItem.split(",",4);
	 	    	//alert(res[0]);  //linkedAccountId
	   	    	//alert(res[1]);  // Date
	   	    	//alert(res[2]);  // Payer Account Id
	   	    	//alert(res[3]);  // Linked Account Name
	   	    	
	   	    	var newUrl = parent_url+"&dt="+res[1]+"";
	   	    	
	   	   	    var newUrl1 = "http://localhost:8080/GravitantCloudAnalytics/production-vdc?linkedAccId="+res[0]+"&dt="+res[1]+"&payerAccountId="+res[2]+"&linkedAccName="+res[3]+"";
	   	    	
	   	    //	var newUrl1 = "http://23.22.132.29:8080/GravitantCloudAnalytics/production-vdc?linkedAccId="+res[0]+"&dt="+res[1]+"&payerAccountId="+res[2]+"&linkedAccName="+res[3]+"";
	   	    // 	var newUrl1 = "https://54.85.174.221/GravitantCloudAnalytics/production-vdc?linkedAccId="+res[0]+"&dt="+res[1]+"&payerAccountId="+res[2]+"&linkedAccName="+res[3]+"";
	   	    	
	   	    	// 	alert(newUrl1);
	   	    	window.location.href = newUrl1;
	   	   
	   		}
	   		
	   		function myFunction2() 
	        	{
	   		//		alert("Inside myFunction");
				   if (xmlhttp.readyState == 4) {
	                  if ( xmlhttp.status == 0) 
					  {
	                       var xmlDataFromRest =   xmlhttp.responseXML ;
	                  }
	                 else
	                	 {
	                	 }
	              }
			}
	   		