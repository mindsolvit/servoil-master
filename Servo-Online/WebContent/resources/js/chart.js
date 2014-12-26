alert("inside chart js");
$(document).ready(function(){
    $.ajax({
    	
        url:"http://localhost:8080/org/charts",
        dataType:"json",
        success:function(data){
            var options = '<option>----select----</option>';
              for (var i = 0; i < data.length; i++) {
                options += '<option value="' + data[i] + '">' + data[i] + '</option>';
              }
              $("#regions").html(options);
 
        },error:function(data){
        }
    });
     
    $("#regions").on("change",function(){
        $.ajax({
            url:"http://localhost:8080/org/"+$(this).val(),
            dataType:"json",
            success:function(data){
                var options = '<option>----select----</option>';
                  for (var i = 0; i < data.length; i++) {
                    options += '<option value="' + data[i] + '">' + data[i] + '</option>';
                  }
                  $("#country").html(options);
 
            },error:function(data){
            }
        });
    });
     
    $("#country").on("change",function(){
        var dataStr = {
                'chart' : {
                    'caption' : 'Cloud Expenditure Evaluation',
                    'xAxisName' : 'years',
                    'yAxisName' : 'consumption',
                    'numberPrefix' : ''
                },
                'data' : [ ]
            };
        var dataObjectArray = new Array();
         
        var myPieChart = new FusionCharts("FusionCharts/FCF_Pie3D.swf",
                "myChartId", "750", "450", "0");
       // alert("In Charts.js");
        var myBarChart = new FusionCharts("FusionCharts/FCF_Column3D.swf",
                "myChartId2", "750", "450", "0");
        $.ajax({
            url:"http://localhost:8080/org/"+$("#regions").val()+"/"+$(this).val(),
            dataType:"json",
            success:function(data){
                var i = 1980;
                $.each(data.consuption, function(key, value) {
                    var dataObject = {
                            label:'',
                            value:''
                        };
                    dataObject.label = "year_"+i;
                    dataObject.value = value;
                    dataObjectArray.push(dataObject);
                    i++;
                });
                dataStr.data = dataObjectArray;
                myPieChart.setJSONData(dataStr);
                myPieChart.render("piechartContainer");
 
                myBarChart.setJSONData(dataStr);
                myBarChart.render("barchartContainer");
            },error:function(data){
            }
        });
         
    });
});