<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>学生信息管理系统</title>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="Style/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<center>
		<table width="1035" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="60" bgcolor="#E6F5FF"
					style="color: #06F; font-size: 30px; font-weight: bolder; padding-left: 50px;">学生信息管理系统</td>

			</tr>
			<tr>
				<td height="60" bgcolor="#E6F5FF" padding-left:50px;" align="right"><strong>【登录角色：${userOA.name}】你好!</strong></td>
			</tr>
			<tr>
				<td height="30" background="Images/MenuBg.jpg">&nbsp;</td>
			</tr>
			<tr>
				<td height="500" align="center" valign="top"><table width="1035"
						border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="191" height="500" align="left" valign="top"
								background="Images/leftbg.jpg"><%@ include file="Left.jsp"%>
							</td>
							<!-- bgcolor="#F6F9FE"> -->
							<!-- background="Images/xiaojiejie.jpg">&nbsp; -->
							<!-- background="Images/guangxian.png">&nbsp; -->
							<td width="709" align="center" valign="top"
								background="Images/guangxian.png">&nbsp;
								<h1>欢迎使用学生管理系统</h1> 
								
								<!-- 
								<div t style="padding:50px;overflow:hidden; color:red; " >
								<p style="font-size: 25px; line-height: 30px; height: 30px;"></p>
									  	<p>开发人员：Huang</p>
									  	<p>开发周期：2019/6/15——2019/6/22（共计7天）</p>
									  	<hr />
									  	<h2>系统环境</h2>
									  	<p>系统环境：Windows</p>
										<p>开发工具：Eclipse</p>
										<p>Java版本：JDK 1.8</p>
										<p>服务器：Tomcat 7.0</p>
										<p>数据库：MySQL 5.0</p>
										<p>系统采用技术： Spring+SpringMVC+Mybatis+Bootstrap+Jquery+MySQL</p>
								</div> 
							 	-->

									</td>
								</tr>
							</table></td>
						</tr>
					<tr>

				<td height="35" background="Images/bootBg.jpg">&nbsp;</td>
				
			</tr>
		</table>
	</center>
</body>
</html>
