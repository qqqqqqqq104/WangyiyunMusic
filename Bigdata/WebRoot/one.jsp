<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>关键词可视化</title>
	<link rel="stylesheet" type="text/css" href="styles/style.css">
  </head>
  
  <body>
  <div style="text-align:center;">
    <img alt="关键词词云" src="image/微词云.png" style="width:670px;height:600px;">
    <a href="index.jsp">列表</a>
    </div>
  </body>
</html>
