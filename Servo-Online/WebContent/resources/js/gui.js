 $(document).ready(function(){
          $("#chartContainer").insertFusionCharts({
               swfUrl: "FCF_Column3D.swf", 
               dataSource: "Data.xml", 
               dataFormat: "xmlurl", 
               width: "400", 
               height: "300", 
               id: "myChartId"
         }); 
          FusionCharts.debugMode.outputFormat('verbose');
       });
      