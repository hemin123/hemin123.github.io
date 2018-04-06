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
function Checkin(s) 
s=trim(s) 
s=replace(s," ","&amp;nbsp;") 
s=replace(s,"'","&amp;#39;") 
s=replace(s,"""","&amp;quot;") 
s=replace(s,"&lt;","&amp;lt;") 
s=replace(s,"&gt;","&amp;gt;") 
Checkin=s 
end function 

function CheckAdmin1
	if Session("IsAdmin")<>true then response.redirect "error.asp"
end function

function CheckAdmin2
	if Session("IsAdmin")<>true or (session("KEY")<>"check" and session("KEY")<>"super") then response.redirect "error.asp"
end function

function CheckAdmin3
	if Session("IsAdmin")<>true or session("KEY")<>"super" then response.redirect "error.asp"
end function

sub error()
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name=author content=<%=webname%> - <%=weburl%>>
<title><%=webname%> - <%=weburl%></title>
<LINK href="admin.css" type=text/css rel=stylesheet>
</head>
<body topmargin="111" leftmargin="0"><br>
<br>
<br>
<br>
<p>&nbsp;</p>
<div align="center">
  <center>
  <table class="tableBorder" border="0" cellspacing="0" width="60%">
    <tr>
      <td width="100%" bgcolor="GREEN">
        <div align="center">
          <table class="tableBorder" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
              <td width="100%" height="80" align="center" background="images/manage/admin_bg.gif" bgcolor="#FFFFFF">
                <b>Error！&nbsp; <%=errmsg%>！&nbsp; :(</b>
                <p><b><a href="javascript:history.go(-1)">...::: 点 此 返 回 
                :::...</a></b>              </td>
            </tr>
          </table>
        </div>
      </td>
    </tr>
  </table>
  </center>
</div>
</body>                    
</html>           
<%
end sub
%>
