<!--#include file="const.asp"-->
<%CheckAdmin3%>
<LINK href="admin.css" type=text/css rel=stylesheet>
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
filename="../User/Link.html"
if request("body")<>"" then
Set fso = Server.CreateObject("Scripting.FileSystemObject")
Set fout = fso.CreateTextFile(server.mappath(""&filename&""))
fout.Write request("body")
fout.close
set fout=nothing
set fso=nothing
mskrindex="ok"
end if

%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<SCRIPT LANGUAGE="JavaScript">
helpstat = false;
stprompt = true;
basic = false;
function thelp(swtch){
	if (swtch == 1){
		basic = false;
		stprompt = false;
		helpstat = true;
	} else if (swtch == 0) {
		helpstat = false;
		stprompt = false;
		basic = true;
	} else if (swtch == 2) {
		helpstat = false;
		basic = false;
		stprompt = true;
	}
}

function AddText(NewCode) {
document.frmAnnounce.body.value+=NewCode
}

function runEx(){
//alert('请注意，按下确定将生成页面，按下后请稍后....');
var winEx = window.open("", "winEx", "width=300,height=200,status=yes,menubar=yes,scrollbars=yes,resizable=yes"); winEx.document.open("text/html", "replace"); 
winEx.document.write(unescape(event.srcElement.parentElement.children[2].value)); 
winEx.document.close(); 
}
</SCRIPT>
<script language="Javascript">
<!-- hide

function insertsmilie(smilieface){

	document.frmAnnounce.body.value+=smilieface;
}
// -->
</script>
<style>
td{font-size:9pt;line-height:140%} 
body{font-size:9pt;line-height:140%} 
a:link       { color: #0033CC; text-decoration: none }
a:visited    { color: #0033CC; text-decoration: none }
a:active     { color: #FF0000; text-decoration: none }
a:hover      { color: #000000; text-decoration: underline}
</style>
</head>
<body topmargin="1" leftmargin="1">
<%if mskrindex="ok" then%>
<table class="tableBorder" border="0" cellspacing="0" style="border-collapse: collapse" width="100%" cellpadding="0">
  <tr>
    <td width="100%"><font color="#FF0000">·</font>成功生成其他页面友情连接js,时间<%=Now()%><br><font color="#FF0000">·</font><a target="_blank" href="<%=filename%>"><%=filename%></a></td>
  </tr>
</table>
<%else%>
<div align=center>
<table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" height="100%">
<form name="frmAnnounce" method="post" action="Admin_LinkSite_Add.asp">
  <tr class="title">
 <td height="22" colspan="3" align="center"><strong>生成友情连接&nbsp; 生成文件:<a class=JyDownSort target="_blank" href="<%=filename%>"><%=filename%></strong></td>
  </tr>
  <tr>
<td width="100%" bgcolor="#FFFFFF" height="100%"><textarea style="width:100%; height:100%;" rows="19" name="body" cols="102">
<head>
<title>品络友情连接系统</title>
<LINK href="/images/home.css" type=text/css rel=stylesheet>
</head>
<div align="center">
<DIV id=o1>
<DIV class="B bg05 H4 M">
<%
set rs=server.createobject("adodb.recordset")
sql="SELECT top 10 * FROM FriendSite where (LogoUrl is not Null) and IsGood=1 and IsOK=1"
rs.open sql,conn,1,1
if not Rs.eof then
	do while not rs.eof	
%>
<td width=20% align=center><a href="<%=rs("SiteUrl")%>" title="<%=rs("SiteName")%> - <%=rs("SiteIntro")%>" target=_blank><img src="<%=rs("LogoUrl")%>" border=0 width=88 height=31></a></td>
  <%
	rs.movenext
	loop
end if
rs.close
%></div></div></div>
</textarea></td>
  </tr>
  <tr>
    <td width="100%" class="forumrow">
    <p align="center">        
    <input name="change" class=buttonface value="生成" type='submit'> </td>
  </tr>
</form>
</table> 
<%
end if
%>   
</body>    
</html>
