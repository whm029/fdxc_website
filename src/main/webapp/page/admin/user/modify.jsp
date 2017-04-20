<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<HTML>
<HEAD>
<title>管理中心V1.0</title>
<meta http-equiv=Content-Type content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/resource/admin/css/admin.css" type="text/css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/resource/admin/js/js.js" type="text/javascript"></script>

<script type="text/javascript">	
  	function validateForm(){
  	
  		var username =  document.getElementById('loginName').value;
  		var password = document.getElementById('password').value;
  		var age = document.getElementById('userAge').value;
  		var reg = /\d{2,3}/;      //是正则表达式 年龄
  		
  		if(username==""){
  			alert('登录名是必填项');
  			return false;
  		}
  		if(password==""){
  			alert('密码是必填项');
  			return false;
  		}
  		if(age==""){
  			alert('年龄是必填项');
  			return false;
  		}
  		if(age.match(reg)){
  			if(age<=18||age>100){
  				alert('请正确填写年龄');
  				return false;
  			}
  		}else{
  			alert('请正确填写年龄');
			return false;
  		}
  	}
</script> 

</HEAD>
<BODY>
	<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
		<TR height=28>
			<TD background="${pageContext.request.contextPath}/resource/admin/images/title_bg1.jpg">&nbsp;西咸新区沣东新城计卫文体局网站后台管理系统</TD>
		</TR>
		<TR>
			<TD bgColor=#b1ceef height=1></TD>
		</TR>
		<TR height=20>
			<TD background="${pageContext.request.contextPath}/resource/admin/images/shadow_bg.jpg"></TD>
		</TR>
	</TABLE>
	
		
	
<form action="${pageContext.request.contextPath}/sysUserAction!modifyUser" id="form1" name="form1" method="post"  onsubmit="return validateForm();" >
<s:token name="s_token"></s:token>
<table width="100%" border="0" cellspacing="0" cellpadding="0" >
  <tr>
    <td height="30" background="${pageContext.request.contextPath}/resource/admin/images/tab_05.gif">
    	<%@include file="/page/admin/frame/table_top.jsp" %>
    </td>
  </tr>
  <tr>
    <td>
    
    <input name="sysUser.userID" type="hidden" value="${sysUser.userID }">
    
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
        <td width="8" background="${pageContext.request.contextPath}/resource/admin/images/tab_15.gif">&nbsp;</td>
        <td>
		<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            <td height="22" align="right" bgcolor="#FFFFFF" class="STYLE3" background="${pageContext.request.contextPath}/resource/admin/images/bg.gif" width="10%">登录名：</td>
			<td height="22" align="left" bgcolor="#FFFFFF" class="STYLE3" width="40%" > &nbsp;&nbsp;<input type="text" name="sysUser.loginName" value="${sysUser.loginName }" id="loginName"></td>
			<td height="22" align="right" bgcolor="#FFFFFF" class="STYLE3" background="${pageContext.request.contextPath}/resource/admin/images/bg.gif" width="10%">密码：</td>
            <td height="22" align="left" bgcolor="#FFFFFF" class="STYLE3" width="40%" >&nbsp;&nbsp;<input type="text" name="sysUser.password" value="${sysUser.password }" id="password"></td>
          </tr>
          <tr>
            <td height="22" align="right" bgcolor="#FFFFFF" class="STYLE3" background="${pageContext.request.contextPath}/resource/admin/images/bg.gif" width="10%">姓名：</td>
            <td height="22" align="left" bgcolor="#FFFFFF" class="STYLE3" width="40%" >&nbsp;&nbsp;<input type="text" name="sysUser.userName" value="${sysUser.userName }"></td>
           	<td height="22" align="right" bgcolor="#FFFFFF" class="STYLE3" background="${pageContext.request.contextPath}/resource/admin/images/bg.gif" width="10%">性别：</td>
            <td height="22" align="left" bgcolor="#FFFFFF" class="STYLE3" width="40%" >&nbsp;&nbsp;<input type="radio" name="sysUser.userSex" value="0"  ${sysUser.userSex  eq 0? "checked":"" }>&nbsp;男
            	<input type="radio" name="sysUser.userSex"  value="1"  ${sysUser.userSex  eq 1? "checked":"" }>&nbsp;女
          </tr>
          <tr>
            <td height="22" align="right" bgcolor="#FFFFFF" class="STYLE3" background="${pageContext.request.contextPath}/resource/admin/images/bg.gif" width="10%">年龄：</td>
            <td height="22" align="left" bgcolor="#FFFFFF" class="STYLE3" width="40%" >&nbsp;&nbsp;<input type="text" name="sysUser.userAge" value="${sysUser.userAge }" id="userAge"></td>
             <td height="22" align="right" bgcolor="#FFFFFF" class="STYLE3" background="${pageContext.request.contextPath}/resource/admin/images/bg.gif" width="10%">部门：</td>
            <td height="22" align="left" bgcolor="#FFFFFF" class="STYLE3" width="40%" >&nbsp;&nbsp;<input type="text" name="sysUser.userDept" value="${sysUser.userDept }"></td>
          </tr>
          <tr>
            <td height="22" align="right" bgcolor="#FFFFFF" class="STYLE3" background="${pageContext.request.contextPath}/resource/admin/images/bg.gif" width="10%">用户类型：</td>
            <td height="22" align="left" bgcolor="#FFFFFF" class="STYLE3" width="40%"  colspan="3">&nbsp;
            	<select name="sysUser.userType" >
            		<option value="0"  ${sysUser.userType eq 0 ? "selected":"" }>管理员</option>
            		<option value="1"  ${sysUser.userType eq 1 ? "selected":"" }>普通用户</option>
            	</select>
          </tr>
        </table>
		</td>
        <td  width="8" background="${pageContext.request.contextPath}/resource/admin/images/tab_15.gif">&nbsp;</td>
      </tr>
    </table> 
    </td>
 </tr>
  <tr>
    <td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="${pageContext.request.contextPath}/resource/admin/images/tab_18.gif" width="12" height="35" /></td>
        <td>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4"></td>
            <td height="35" background="${pageContext.request.contextPath}/resource/admin/images/tab_19.gif">
              <table border="0" align="center" cellpadding="0" cellspacing="0" id="form_oper">
                <tr>
                <td>					
                	<input  type="submit" value="提交" />				
					<input  type="button" value="返回" onclick="history.go(-1)"/>	
				</td>
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="${pageContext.request.contextPath}/resource/admin/images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table>
    
    
    </td>
  </tr>
</table>
</form>
</BODY>
</HTML>