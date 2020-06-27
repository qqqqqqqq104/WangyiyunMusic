<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="utf-8">
    <!-- 引入 ECharts 文件 -->
    <script src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts.min.js"></script>
    <script  src="http://libs.baidu.com/jquery/1.7.2/jquery.min.js"></script>
    <base href="<%=basePath%>"> 
    <title>关键词可视化</title>
	<link rel="stylesheet" type="text/css" href="styles/style.css">
  </head>
  
  <body>
  <div class="left">
  <h1>关键词列表</h1>
   <a href="displayView.action">显示</a>
  <table border="1">  
     <tr><td class="t1">关键词</td><td class="t1">频率</td><td class="t1">权重</td></tr>
      <s:iterator value="list" status="li" var="post">
   
           <tr>
           <!--  <td class="t1">${post.id}</td>-->
           <td class="t1">${post.keys}</td>
           <td class="t1">${post.frequency}</td>
           <td class="t1">${post.weight}</td>
           </tr>
      </s:iterator>
  </table>
  <a href="test.jsp">柱状图>>></a>
  </div>
  </body>
</html>
