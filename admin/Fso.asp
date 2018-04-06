<!--#include file="const.asp"-->
<!--#include file="../PL_INC/Cls_AspHttp.asp"-->
<!--#include file="../PL_INC/Function.asp"-->
<!--
HttpGet(10000,10000,20000,20000,RunHod,GetUrl,"",sData,"","zh-cn","application/x-www-form-urlencoded","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)","gzip, deflate","*/*","gb2312")
-->
<%CheckAdmin3%>
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
addr0 = request.servervariables("server_name")
addr1 = request.servervariables("url")
addr1 = replace(addr1,"Fso.Asp","index_mb.asp")
addport = request.ServerVariables("SERVER_PORT")
GetUrl = "http://"&addr0&":"&addport&""&addr1&""
indexcode=HttpGet(10000,10000,20000,20000,"GET",GetUrl,"",sData,"","","","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)","","*/*","gb2312")
filename="../Index.html"
Set fso = Server.CreateObject("Scripting.FileSystemObject")
Set fout = fso.CreateTextFile(server.mappath(""&filename&""))
fout.Write indexcode
fout.close
set fout=nothing
set fso=nothing
mskrindex="ok"
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="admin.css" type=text/css rel=stylesheet>
</head>
<body topmargin="1" leftmargin="1">
<%if mskrindex="ok" then%>
<table class="tableBorder" border="0" cellspacing="0" style="border-collapse: collapse" width="100%" cellpadding="0">
  <tr>
    <td width="100%"><font color="#FF0000">·</font>首页模板地址:<%=GetUrl%><br><font color="#FF0000">·</font>操作成功,生成时间在<%=Now()%><br><font color="#FF0000">·</font>点击浏览<a target="_blank" href="<%=filename%>"><%=filename%></a></td>
  </tr>
</table>
<%
end if
%>   
</body>    
</html>
