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


function yuan() {
	var oldPassword=$("#oldPassword").val();
	var $span=$("#oldPassword + span");
	
	
	var oldd=$("#old").val(); 
	if(oldPassword == oldd){				
		$span.css("color","green");
		$span.text("√输入正确");
		return true;
	}else if(oldPassword==""){
		$span.css("color","red");
		$span.text("×原始密码不能为空！");
		return false;	
	}else{
		$span.css("color","red");
		$span.text("×原始密码不正确！");
		return false;
	}
}

function xinmi() {
	//var oldPassword=$("#oldPassword").val();
	var newPassword=$("#newpassword").val();
	var $span=$("#newpassword + span");
	var oldd=$("#old").val(); 
	if(newPassword == oldd){
		$span.css("color","red");
		$span.text("×新密码不能和原始密码一样");
		return false;		
	}else if(newPassword!=""){
		$span.css("color","green");
		$span.text("√输入正确");
		return true;	
	}else{
		$span.css("color","red");
		$span.text("×新密码不能为空");
		return false;
	}	
}


function chongfu() {
	var rPassword=$("#rPassword").val();
	var $span=$("#rPassword + span");
	var newPassword=$("#newpassword").val();
	
	if(rPassword == newPassword){
		$span.css("color","green");
		$span.text("√输入正确");
		return true;					
	}else if(rPassword ==""){
		$span.css("color","red");
		$span.text("×密码不能为空");
		return false;	
	}else{
		$span.css("color","red");
		$span.text("×密码和新密码不一致");
		return false;	
	}
}


 function checkper(){
      var flag=true;
      if(!checkForm()) flag=false;  
      if(!yuan()) flag=false;  
      if(!xinmi()) flag=false;  
      if(!chongfu()) flag=false;  
      return flag;
   }

function isNull(str){
if ( str == "" ) return true;
var regu = "^[ ]+$";
var re = new RegExp(regu);
return re.test(str);
}
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
          <td width="790" align="center" valign="top" bgcolor="#F6F9FE"><table width="790" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="30" background="Images/mainMenuBg.jpg" style="padding-left:25px;">修改密码</td>
            </tr>
            <tr>
            
              <td height="470" align="center" valign="top" bgcolor="#F6F9FE">
             <form name="form1" method="post" action="OAUserupdates?id=${id}" onSubmit="return mycheck()" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="33%" height="30" align="right">&nbsp;</td>
                    <td width="67%">&nbsp;</td>
                     <td><input type="text" id="old" value="${password}"/></td> 
                     <td><input type="text" id="id" name="id" value="${id}"/></td>    
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>请输入原密码：</td>  
                                     
                    <td><input type="password" id="oldPassword"  name="oldPassword"   style="margin-top:5px;height:30px;" onBlur="yuan()"/><span></span></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>请输入新密码：</td>
                    <td><input type="password" id="newpassword"  name="password"  style="margin-top:5px;height:30px;" onBlur="xinmi()"/><span></span></td>
                  </tr>
                  <tr>
                    <td height="30" align="right"><span style="color:red;"></span>请重复新密码：</td>
                    <td><input type="password" id="rPassword"  name="rPassword"  style="margin-top:5px;height:30px;" onBlur="chongfu()"/><span></span></td>
                  </tr>
                  <tr>
                    <td height="30">&nbsp;</td>
                    <td><input type="submit" name="button" id="button" value="修改密码"></td>
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
