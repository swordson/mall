<%@ page contentType="text/html;charset=utf-8" %>
<%@ include file="/WEB-INF/page/share/taglib.jsp" %>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<jsp:include page="/location_check.jsp"></jsp:include>
<link rel="stylesheet" href="css/vip.css" type="text/css">

<script language="JavaScript">
function checkfm(form){
	if (trim(form.name.value)==""){
		alert("国家名称不能为空!");
		form.name.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<html:form action="control/center/country/manage" method="post"  onsubmit="return checkfm(this)">
<input type="hidden" name="method" value="add"/>
<br>
  <table width="90%" border="0" cellspacing="2" cellpadding="3" align="center">
    <tr bgcolor="6f8ac4"><td colspan="2"  > <font color="#FFFFFF"></font></td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td width="22%" > <div align="right">国家名称</div></td>
      <td width="78%"> <input type="text" name="cnName" size="50" maxlength="50"/>
        <font color="#FF0000">*</font></td>
    </tr>
 <tr bgcolor="f5f5f5"> 
      <td width="22%" > <div align="right">英文名称</div></td>
      <td width="78%"> <input type="text" name="enName" size="50" maxlength="50"/>
        <font color="#FF0000">*</font></td>
    </tr>
     <tr bgcolor="f5f5f5"> 
      <td width="22%" > <div align="right">英文简写2位</div></td>
      <td width="78%"> <input type="text" name="countries_iso_code_2" size="50" maxlength="50"/>
        <font color="#FF0000">*</font></td>
    </tr>
         <tr bgcolor="f5f5f5"> 
      <td width="22%" > <div align="right">英文简写</div></td>
      <td width="78%"> <input type="text" name="countries_iso_code_3" size="50" maxlength="50"/>
        <font color="#FF0000">*</font></td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td colspan="2"> <div align="center"> 
          <input type="submit" name="SYS_SET" value=" 确  定  " class="frm_btn">
         <input type="button" value=" 后  退  " class="frm_btn" onclick="javascript:history.back(-1)">
        </div></td>
    </tr>
  </table>
</html:form>
 
<br>
</body>
</html>