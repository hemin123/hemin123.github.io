<!--#include file="../PL_config.asp"-->
<%
'
'☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆
'★                                                                      ★
'☆                     品络音乐程序系统1.0                              ☆
'★                                                                      ★
'☆     版权所有: 品络科技   PinLuo.Com                                  ☆
'★                                                                      ★
'☆     程序制作: 品络软件科技有限公司                                   ☆
'★       E-mail: pinluo.com@163.com    pinluo@qq.com                    ★
'☆           QQ: 812153636  852672993  290820145  512563020             ☆
'★                                                                      ★
'☆     相关网址: [产品介绍]http://www.pinluo.com/music_show.asp         ☆
'★               [支持论坛]http://bbs.pinluo.com/                       ★
'☆                                                                      ☆
'★     旗下网站: http://www.pinluo.com      团队及产品                  ★
'☆               http://www.aspxweb.com     ASP.NET学习网               ☆
'★               http://www.8555.org        8555免费电影                ★
'☆               http://www.dd88.net        极品设计                    ☆
'★               http://www.vodsea.com      影视海洋                    ★
'☆               http://www.musicfans.cn    音乐爱好者                  ☆
'★                                                                      ★
'☆                                                                      ☆
'★  --  如要正式用于建站，赚更多的钱，希望大家购买官方的商业版本！ --   ★
'☆                                                                      ☆
'★                                                                      ★
'☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆
'
'         欢迎使用本程序，请不要删除上面的版权信息，谢谢您的支持！
'
'
Function GetCode()
	Dim TestObj
	On Error Resume Next
	Set TestObj = Server.CreateObject("Adodb.Stream")
	Set TestObj = Nothing
	If Err Then
		Dim TempNum
		Randomize timer
		TempNum = cint(8999*Rnd+1000)
		Session("GetCode") = TempNum
		GetCode = Session("GetCode")		
	Else
		GetCode = "<img src=""PL_inc/GetCode.asp"">"		
	End If
End Function
%>
<html>
<head>
<title>管理员登陆 - <%=webname%></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="admin.css" type="text/css">
</head>
<body topmargin="0" leftmargin="0" rightmargin="0">
<div align="center">
  <p><BR>
    <%
'PL_chk=Request.ServerVariables("url")
'PL_chk=LCase(PL_chk)
'If InStr(PL_chk,"/admin/")>0 Then 
'response.write"<script>alert('请将默认管理目录admin改名！');</script>"
'End If 	
%>
</p>
  <p>&nbsp;</p>
  <p>&nbsp;  </p>
  <form name="form" method="post" action="Chklogin.Asp" target="_top">
    <table class="tableBorder" border="0" align=center cellpadding="5" cellspacing="1" class=tableBorder width="60%">
     <tr> <th colspan=2>管理员登陆</th>
     </tr>
      <tr>
        <td align=center class="forumRowHighlight" width="30%" >用户名：</td><td class=forumRow width="70%"><input name="UserName" maxlength="10" size="25" class="tableBorder" value=""></td>
      </tr>
      <tr>
        <td align=center class="forumRowHighlight">密&nbsp;&nbsp;码：</td><td class=forumRow><input type="password" name="PassWord" maxlength="30" size="25" class="tableBorder"></td>
      </tr>
      <tr>
        <td align=center class="forumRowHighlight">附加码：</td><td class=forumRow><input name="verifycode" size="4" maxlength="4">
               请输入附加码:<B><font color=RED><% = GetCode() %></font></B>
</td>
      </tr>
      <td colspan=2 align=center class=forumRowHighlight>
    <input type="submit" name="Submit" value="登 陆..." class=button>&nbsp;&nbsp;<input onclick=window.location.reload() type=button value=刷新本页 name=refresh class=button>&nbsp;
    <input type="button" name="Submit1" onClick="javascript:location.href='../'" value="返回首页" class=button></td></tr>
    </table></form>
</div>
</body>
</html>