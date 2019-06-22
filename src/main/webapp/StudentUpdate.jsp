<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
</head>
<script language="JavaScript">

</script>
<body>
<center>
  <table width="900" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="60" bgcolor="#E6F5FF" style="color:#06F; font-size:19px; font-weight:bolder; padding-left:50px;">学生管理系统</td>
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
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">修改学员信息</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
             <form name="form1" method="post" action="Studentupdate?id=${list.id}" onSubmit="return mycheck()" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="33%" height="30" align="right">&nbsp;</td>
                    <td width="67%">&nbsp;</td>
                    <td><input type="hidden" id="id" name="id" value=""/></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>学员编号：</td>           
                    <td><input name="sid" type="text" class="text2"  value="${list.sid}"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>学员姓名：</td>
                    <td><input name="name" type="text" class="text2" value="${list.name}"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>学员性别：</td>
                    <td><input name="sex" type="text" class="text2" value="${list.sex}"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>出生年月：</td>
                    <td><input name="age" type="text" class="text2" value="${list.age}"></td>
                  </tr>
                  
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>学员电话：</td>
                    <td><input name="tel" type="text" class="text2" value="${list.tel}" ></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>学员户籍：</td>
                    <td><input name="grade" type="text" class="text2" value="${list.grade}"></td>
                  </tr>
                  <tr>
                    <td height="30">&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="修改学员信息">
                      &nbsp;&nbsp;
                      <input type="button" name="button2" id="button2" value="返回上页" onClick="javascript:history.back(-1);"></td>
                  </tr>
                </table>
              </form></td>
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
</body>
</html>
