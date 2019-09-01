<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>学生信息管理系统</title>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="Style/Style.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

</head>
 <style type="text/css">
    .one{
        text-align:center;
        font-size:20px;
    }
    </style>
<script type="text/javascript">
	$(function(){
		$('#text4').val("${huixianName}");
		});	
	//查看
	function mabi(classid,classname,classexplain){	
 		$('#userid').text(classid);
 		$('#accountsssss').text(classname);
 		$('#name').text(classexplain);
 	};
 	//删除
 	function batchDeletes(id){
/*  	  alert("第一次："+id);    */
 		var fid=id;
 		$("#id").val(fid);
 	}
 	function batchDelete(){
 		 var id=$.trim($("#id").val()); 
 		window.location="deleteClass?id="+id;
 	}
</script>
 <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
       <script src="bootstrap/js/bootstrap.min.js"></script>
       <!-- 删除框模板 -->
    <div class="modal  fade bs-example-modal-sm" id="delForm" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal" aria-label="Close">
                        <span>&times;</span>
                    </button>
                    <h3 align="center">删除</h3>
                </div>
                <div class="modal-body">
					<div class="row">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" name="id" id="id"/><br/>
					<input type="hidden" name="studentid" id="studentid" value="${user.stuinfo.studentid}"/>
						<div class="one">确定删除此信息吗?</div>
					</div>
				</div>
                <div class="modal-footer">
                    <button class="btn btn-primary" onclick="batchDelete()">确认</button>
                    <button class="btn btn-danger" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
<!--查看框模板-->
<div class="container" align="center">
    <div class="modal fade" id="loginForms" style="display: none;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">
                        <span>&times;</span>
                    </button>
                    <h3>浏览信息</h3>
                </div>
                <div class="modal-body">
                    <form action="" class="form-horizontal">
                        <table>
                        <tr>
                            <td><strong>班级编号:</strong></td>                    
                                <td>&nbsp;&nbsp;&nbsp;<Strong><span id="userid"></span></Strong>
                            </td>
                            </tr>
                        <tr>
                            <td><strong>班级专业:</strong></td>
                            <td>
                                &nbsp;&nbsp;&nbsp;<Strong><span id="accountsssss"></span></Strong>
                            </td>                         
                        </tr>
                        <tr>
                            <td><strong>班级院系:</strong></td>
                            <td>
                               &nbsp;&nbsp;&nbsp;<Strong><span id="name"></span></Strong>                     
                            </td>                       
                       </tr>            
                        </table>
                    </form>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary">确认</button>
                    <button class="btn btn-danger" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
    </div>
<body>
<center>
  <table width="900" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="60" bgcolor="#E6F5FF" style="color:#06F; font-size:30px; font-weight:bolder; padding-left:50px;">班级信息管理系统</td>
    </tr>
    <tr>
      <td height="30" background="Images/MenuBg.jpg">&nbsp;</td>
    </tr>
    <tr>
      <td height="500" align="center" valign="top"><table width="900" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="191" height="500" align="center" valign="top" background="Images/leftbg.jpg">
          <%@ include file="Left.jsp"%>
          </td>
          <td width="709" align="center" valign="top" bgcolor="#F6F9FE"><table width="709" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">班级信息管理</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
              <form name="form1" method="post" action="" id="searchForm">
               <input type="hidden" id="pageNo" name="pageNo" value="${pagerBooks.pageNo}"/>
               <input type="hidden" id="pageSize" name="pageSize" value="${pagerBooks.pageSize}"/> 
                <table width="100%%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                  <td width="28%" height="30" style="padding-left:20px;"> 功能导航：<button style="background:#7bbfea"><a href="ClassidAdd.jsp">添加班级</a></button></td>
                    <td width="72%">查询：
                      <select name="text3" id="searchType">
                        <option value="">全部</option>
                        <option value="班级编号">班级编号</option>
                        <option value="班级名称">班级专业</option>
                      </select>
                      <input name="text4" type="text" id="text4">
                      <input type="submit" name="button" id="button" value="点击查询"></td>
                  </tr>
                </table>
              </form>              
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr align="center"  class="t1">
                    <td height="25" bgcolor="#D5E4F4"><strong>班级编号</strong></td>
                    <td height="25" bgcolor="#D5E4F4"><strong>班级专业</strong></td>
                    <td bgcolor="#D5E4F4"><strong>班级院系</strong></td>
                    <td bgcolor="#D5E4F4"><strong>操作</strong></td>
                  </tr>
                  <c:forEach var="list" items="${pagerBooks.entitiesList}" varStatus="status">
                  <tr align="center"<c:if test="${status.index % 2==1}">
                      style="background-color:rgb(205,300,200);"
                      </c:if>> 
                      <td height="25" align="center">${list.classid}</td>
                      <td height="25" align="center">${list.classname}</td>
                      <td>${list.classexplain}</td>
                   <td align="center">
					<button class="layui-btn layui-btn-normal layui-btn-mini" type="button" data-toggle="modal" data-target="#loginForms"  style="background:#7bbfea"
					 onclick="mabi('${list.classid}','${list.classname}','${list.classexplain}')">预览</button>							 		
					<button class="layui-btn layui-btn-mini" type="button" style="background:#50b7c1"><a href="Selects?id=${list.id}">编辑</a></button>
					<button href="javascript:;" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini" style="background:#ed1941" data-toggle="modal" data-target="#delForm" onclick="batchDeletes('${list.id}')">删除</button>
					</td>
                    </tr>
                 </c:forEach>
                  <tr>
         <td colspan="7" align="center">
          <div style="color: red; text-align: center;"><Strong>${mywo}</Strong></div>
         </td>
          </tr>
                </table>
                 <c:set var="pager" value="${pagerBooks}" scope="page"/>
              <%@ include file="/Person/Person.jsp" %>
            </tr>
          </table></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td height="35" background="Images/bootBg.jpg">&nbsp;</td>
    </tr>
  </table>
</center>
<script type="text/javascript" src="plugins/layui/layui.js"></script>
</body>
</html>
