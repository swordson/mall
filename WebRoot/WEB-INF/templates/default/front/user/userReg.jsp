<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/templates/default/share/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<jsp:include page="/location_check.jsp"></jsp:include>
<title>用户注册 Angel In The Box</title>
<link rel="icon" href="images/favicon.ico" type="image/x-icon" /> 
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/global/header01.css" rel="stylesheet" type="text/css">
<link href="css/product/list.css" rel="stylesheet" type="text/css" />
<link href="css/global/topsell.css" rel="stylesheet" type="text/css">

<link href="css/global/header.css" rel="stylesheet" type="text/css">
<link href="css/global/reg.css" rel="stylesheet" type="text/css">

<SCRIPT language=JavaScript src="js/xmlhttp.js"></SCRIPT>
  <SCRIPT LANGUAGE="JavaScript">
  <!--
	function checkForm(){
		var form = document.forms[0];

		if(form.password.value=="" || form.password.value.length<6){
			alert("请输入长度6位以上的密码");
			return false;
		}
		if(form.password.value!=form.repassword.value){
			alert("两次输入的密码不正确");
			return false;
		}
		if(/[\W]/g.test(form.username.value)){
			alert("用户名中不能含有中文");
			return false;
		};
		return true;
	}
	function checkUsername(){
		var form = document.forms[0];
		var username = form.username.value;
		var viewobj = document.getElementById("checkResult");
		viewobj.innerHTML = "正在检测中...";
		send_request(function(value){viewobj.innerHTML=value},
		'<html:rewrite action="user/reg"/>?method=isUserExsit&username='+ username, true);
	}
  //-->
  </SCRIPT>
</head>

<body style="margin:auto;width:985px;">
<jsp:include page="/WEB-INF/templates/default/share/head.jsp"/>
<c:if test="${!empty message}">
		<DIV id="errorinfo">
			<TABLE cellSpacing=1 cellPadding=8 width="78%" align="center"
				bgColor="#dd9988" border=0>
				<TBODY>
					<TR>
						<TD bgColor="#ffffd5" align="left">
							<IMG height="17" src="images/buy/exclamation-error-red.gif"
								width="17" style="float:left">
							<DIV id="errorMessage">${message}</DIV>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</DIV>
</c:if>
<!-- 检证用户是否存在表单 end -->
<TABLE cellSpacing=0 cellPadding=0 width=770 align=center border=0>
  <TBODY>
  <TR><TD background="images/login/login_03.jpg">&nbsp;</TD></TR>
  <TR>
    <TD height=15>&nbsp;</TD>
  </TR>
  <TR>
    <TD height=30><img src="images/login/zc.gif" width="128" height="31" /></TD>
  </TR>
 </TBODY>
</TABLE>

<DIV id="errorinfo" style="DISPLAY:none">
<TABLE cellSpacing=1 cellPadding=8 width="78%" align="center" bgColor="#dd9988" border=0>
  <TBODY>
  <TR>
    <TD bgColor="#ffffd5" align="left"><IMG height="17" src="images/buy/exclamation-error-red.gif" width="17"> <FONT color="#990000"><STRONG><SPAN class="font14">错误提示<BR></SPAN></STRONG></FONT>
      <DIV id="errorMessage"></DIV>
	</TD>
  </TR>
  </TBODY>
</TABLE>
</DIV>

<div id="Content">
<form action="user/userReg.do" method="post" name="userRegForm" onsubmit="javascript:return checkForm()">
<input name="method" value="add" type="hidden"/>
<div id="Main">
  <ul id="FormRegStep1_Account" class="RegForm">
        <li class="Title">以下<span class="STYLE1">均为</span>必填项　</li>
			  <li>
            <div class="Hint">电子邮件：</div>
            <div class="Input">
              <input name="email" value="" id="email" type="text" size="28" maxlength="45" tabindex="3" onClick="chanestyle('email_info');"/>
            </div>
            <div class="Info"><div id="email_info">没有电子邮件？推荐使用<a href="https://reg.cn.yahoo.com/cnreg/cnreg_first?id=78001" target="_blank">雅虎3.5G免费超大邮箱</a>、<a href="http://mail.sogou.com/register.jsp" target="_blank">搜狐邮箱</a>和<a href="http://reg.126.com/reg1.jsp" target="_blank">网易邮箱</a>。<br></div>
            </div>
            <div class="HackBox"></div>
          </li>	
 
	    <li>
            <div class="Hint">密码：</div>
            <div class="Input">
              <input name="password" value="" id="password" type="password" size="24" maxlength="16" tabindex="2"/>
            </div>
            <div class="Info">
                <div id="password_info">密码由6-16个字符组成，请使用英文字母加数字或符号的组合密码</div><br>
            </div>
            <div class="HackBox"></div>
          </li>


	</ul></div>
	<p class="SubmitBox">
	<input type="submit" name="Submit" value="提交注册信息" tabindex="8" />
	</p></form>
</div>
<jsp:include page="/WEB-INF/templates/default/share/foot.jsp"/>
</html>