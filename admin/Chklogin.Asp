<!--#include file="Const.Asp"-->
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
username=Checkin(trim(Request.form("username")))
password = md5(Trim(Replace(Request("password"), "'", "")))
VerifyCode = Replace(Trim(Request("VerifyCode")),"'","")

if UserName = "" or  PassWord = "" then
	Response.Write("<script>alert(""请填写完整用户名和密码"");location.href=""login.asp"";</script>")
	Response.End
end if

if  VerifyCode <> CStr(Session("GetCode"))  then 
	Response.Write("<script>alert(""验证码错误"");location.href=""login.asp"";</script>")
	Response.End
end if
if request("VerifyCode") = "" then
	Response.Write("<script>alert(""请填写验证码"");location.href=""login.asp"";</script>")
	Response.End
elseif Session("GetCode") = "9999" then
	Session("GetCode")=""
elseif Session("GetCode") = "" then
	Response.Write("<script>alert(""错误：\n请不要重复提交，如需重新登录请返回登录页面。\n返回后请刷新登录页面后重新输入正确的信息"");location.href=""login.asp"";</script>")
	Response.End
elseif cstr(Session("GetCode"))<>cstr(Trim(Request("VerifyCode"))) then
	Response.Write("<script>alert(""错误：\n您输入的确认码和系统产生的不一致，请重新输入。\n返回后请刷新登录页面后重新输入正确的信息"");location.href=""login.asp"";</script>")
	Response.End
end if

set rs = server.createobject("adodb.recordset")
sql="select id,username,oskey,LoginTimes,LoginTime,LoginIP from admin where username='"&username&"'and password='"&password&"'"
rs.open sql,conn,1,3
if not rs.EOF then
	rs("LoginTimes")=rs("LoginTimes")+1
	rs("LoginTime")=now()
	rs("LoginIP")=Request.ServerVariables("REMOTE_ADDR")
	rs.Update

	Session("AdminID")=rs("id")
	Session("PL_Adminname")=rs("username")
	Session("IsAdmin")=true
	Session("KEY")=rs("oskey")
    	Session.timeout=900
	Response.Redirect ("Admin.Asp")
else
	errmsg="请输入正确的管理员名字和密码！"
	call error()
	Response.End 
end if
rs.close
set rs=nothing
conn.close
set conn=nothing
%>
