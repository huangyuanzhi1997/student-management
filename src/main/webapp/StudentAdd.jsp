<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
</head>
<script language="JavaScript">
   
   
</script>
<body>
<center>
  <table width="900" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="60" bgcolor="#E6F5FF" style="color:#06F; font-size:30px; font-weight:bolder; padding-left:50px;">添加学生信息系统</td>
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
          
          <!-- 横条宽度 -->
          
          <td width="900" align="center" valign="top" bgcolor="#F6F9FE"><table width="900" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">添加学员信息</td>
            </tr>
            <tr>
              <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
              <form name="form1" method="post" action="saveStudent" onSubmit="return mycheck()" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="33%" height="30" align="right">&nbsp;</td>
                    <td width="67%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>学员学号：</td>
                    <td><input name="sid" type="text" class="text2" id="sid"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>学员姓名：</td>
                    <td><input name="name" type="text" class="text2" id="name"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>学员性别：</td>
                    <td><select name="sex" id="sex">
                      <option value="">请选择</option>
                      <option value="男">男</option>
                      <option value="女">女</option>
                    </select></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>出生日期：</td>
                    <td><input name="age" type="text" class="text2" id="age"></td>
                  </tr>
                  
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>学员电话：</td>
                    <td><input name="tel" type="text" class="text2" id="tel"></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>家庭住址：</td>
                    <td><input name="grade" type="text" class="text2" id="grade"></td>
                  </tr>
                  <tr>
                    <td height="30">&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="添加学员">
                      &nbsp;&nbsp;
                      <input type="button" name="button2" id="button2" value="返回上页" onClick="javascript:history.back(-1);"></td>
                  </tr>
                </table>
              </form></td>
              
              <!-- 页面大小保持一致 -->
              <div style="margin:0 auto;text-align:center;width:900px;">
              </div>
              
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
