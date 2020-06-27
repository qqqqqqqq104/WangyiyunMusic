<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>柱状图</title>
    <!-- 引入 ECharts 文件 -->
    <script src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts.min.js"></script>
    <script  src="http://libs.baidu.com/jquery/1.7.2/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="styles/style.css">

  </head>
  
  <body>
  <div id="main" class="right">
      <script type="text/javascript">
  var myChart = echarts.init(document.getElementById('main'));
         // 显示标题，图例和空的坐标轴
         myChart.setOption({
             title: {
                 text: '关键词频率统计柱状图',
                 textStyle:{ //设置主标题风格
                      //color:'white',//设置主标题字体颜色
                      fontStyle:'',//主标题文字风格
                 },
             },
             tooltip: {},
             legend: {
                 data:['频率'],
                 textStyle:{
                            //fontSize: 18,//字体大小
                            //color: '#ffffff'//字体颜色
                        },
             },
             xAxis: {
                 data: ['加油','晚安','世界','夏天','好听','温柔','开心','啊啊','快乐','谢谢','女孩','朋友','网易','可爱','人间','妈妈','难过','记得','遇见','幸福'],
                 axisLabel: {
                            show: true,
                            textStyle: {
                                //color: '#ffffff'
                            }
                        }
             },
             yAxis: {
                   axisLabel: {
                            show: true,
                            textStyle: {
                                //color: '#ffffff'
                            }
                        }
             },
             series: [{
                 name: '频率',
                 type: 'bar',
                 data: ['2498','1102','1093','995','866','774','753','747','700','673','630','601','572','569','546','534','519','515','483','466']
             }]
         });

         myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画

         var keys=[];    //类别数组（实际用来盛放X轴坐标值）
         var frequency=[];    //销量数组（实际用来盛放Y坐标值）

         $.ajax({
				type: "post",
				async: false,
				url: '${PageContext.request.contextpath}getData.action',
				data: {},
				dataType: "json",
				success: function(result){
				    console.log(result);
				    alert(result);
					if(result){
                        //初始化option.xAxis[0]中的data
                        //option.xAxis[0].data=[];result.length
                        for(var i=0;i<10;i++){
                          keys.push(result[i].keys);
						}
                      //初始化option.series[0]中的data
                        //option.series[0].data=[];
                        for(var i=0;i<10;i++){
                          frequency.push(result[i].frequency);
                        }
					}
			},
         error : function(errorMsg) {
             //请求失败时执行该函数
         //alert("图表请求数据失败!");
         myChart.hideLoading();
         }
    })
</script>
  </div>
  </body>
</html>
