<!--#include file="const.asp"-->
<%CheckAdmin2%>
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
act=request("act")
Page=request.QueryString("Page")
Askclassid=request.QueryString("Askclassid")
Asksclassid=request.QueryString("Asksclassid")
AskNclassid=request.QueryString("AskNclassid")
Specialid=request.QueryString("Specialid")
if act<>"SetIsGood" then
	act=request("act")
end if
set rs=server.createobject("adodb.recordset")

if act="SetIsGood" then
		
		sql="select IsGood,Date from Special where Specialid="&Specialid
		rs.open sql,conn,1,3
		if not rs.EOF then
			if rs("IsGood")=true then
				rs("IsGood")=0
			else
				rs("IsGood")=1
				rs("Date")=Now()
			end if
			rs.update
		
end if	
	rs.close
	
	else
		conn.close
		set conn=nothing
		errmsg=errmsg+"<li>操作错误！请联系管理员</li>"
		call error()
		Response.End
	end if
	set rs=nothing


conn.close
set conn=nothing
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="RSHOP" content="品络科技---pinluo.com">
<meta Author="Recall Star" content="品络科技---pinluo.com">
<title>品络科技---pinluo.com</title>
<!--#include file="style.asp"-->
</head>
<body topmargin="111" leftmargin="0">
  <table class="tableBorder" border="0" cellspacing="0" width="95%" align="center">
    <tr>
      <td width="100%" bgcolor="#3366CC">
        <div align="center">
          <table class="tableBorder" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
              <td width="100%" bgcolor="#FFFFFF" height="80" align="center">
              <b>操 作 完 成</b>
                <p><b><a href="javascript:history.go(-1)">返 回</a></b>
              </td>
            </tr>
          </table>
        </div>
      </td>
    </tr>
  </table>
</body>                    
</html>
