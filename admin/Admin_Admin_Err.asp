<!--#include file="Const.Asp"-->
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
founderr=false

username=request.form("username")
password=request.form("password")
oskey=request.form("oskey")
if username="" or password="" then
	errmsg=errmsg+"<br>"+"<li>管理员名称和密码都不能为空！"
	founderr=true
	call error()
	Response.End 
end if

set rs=server.CreateObject("ADODB.RecordSet")

if request("act")="edit" and request.QueryString("id")<>"" then
	id=request("id")
	sql="select * from admin where id="& request.QueryString("id")
	rs.open sql,conn,3,2
	if not rs.eof then
		rs("oskey")=oskey
		rs("Username")=username
		Rs("password") = md5(Request.Form("password"))
		rs.update
	end if
	rs.close
elseif request("act")="add" then
	sql="select * from admin where username='"&username&"'"
	rs.open sql,conn,3,2
	if (rs.eof and rs.bof) then
		rs.addnew
		rs("oskey")=oskey
		rs("Username")=UserName
		Rs("password") = md5(Request.Form("password"))
		rs.update
	end if
	rs.close
end if
set rs=nothing
conn.close
set conn=nothing
response.redirect "Admin_Admin.Asp"
%>
<html></html>
