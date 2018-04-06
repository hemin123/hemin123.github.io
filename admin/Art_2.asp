<!--#include file="Const.Asp"-->
<%CheckAdmin3%>
<%PageName="Art_2"%>
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
ClassID=request.form("Classid")
founderr=false

if act="rename" then
	FunRename
elseif act="del" then
	FunDel
elseif act="add" then
	FunAdd
else
	errmsg=errmsg+"<br>"+"<li>操作错误！请联系管理员"
	founderr=true
end if

if founderr=true then
	call error()
else

end if

function FunRename
	SClassid=request.QueryString("SClassid")
	SClass=trim(request.form("Sclass"))
	if SClass="" then
		errmsg=errmsg+"<br>"+"<li>栏目名称不能为空！"
		call error()
		Response.End 
	end if
	set rs=server.createobject("adodb.recordset")
	sql = "SELECT * FROM Sclass where Sclassid=" & SClassid
	rs.Open sql,conn, 1, 3
	if err.Number<>0 then
		err.clear
		errmsg=errmsg+"<br>"+"<li>操作错误！请联系管理员"
		founderr=true
	else
		rs("Sclass") = Sclass
		rs.Update
	end if
	rs.Close

	set rs=nothing
	conn.close
	set conn=nothing
end function

function FunDel
	SClassid=request("SClassid")
	sql="delete from Sclass where Sclassid=" & SClassid
	conn.execute sql
	Rem '删除三级栏目
	sql="delete from Nclass where Sclassid=" & SClassid
	conn.execute sql
	Rem '删除相关商品
	sql="delete from special where Sclassid=" & SClassid
	conn.execute sql
	if err.Number<>0 then
		err.clear
		errmsg=errmsg+"<br>"+"<li>操作错误！请联系管理员"
		founderr=true
	end if
end function
	
function FunAdd
	SClass=trim(request.form("SClass"))
	Classid=request.QueryString("Classid")
	if SClass="" then
		errmsg=errmsg+"<br>"+"<li>栏目名称不能为空！"
		call error()
		Response.End 
	end if
	set rs=server.createobject("adodb.recordset")
	sql = "SELECT * FROM Sclass where (Sclassid IS NULL)"
	rs.Open sql,conn, 1, 3
	if err.Number<>0 then
		err.clear
		errmsg=errmsg+"<br>"+"<li>操作错误！请联系管理员"
		founderr=true
	else
		rs.AddNew
		rs("Sclass") = SClass
		rs("Classid") = Classid
		rs.Update
	end if
	rs.Close
	set rs=nothing
	conn.close
	set conn=nothing
end function
Response.Redirect "Art_3.asp?id="&classid&""
%>
