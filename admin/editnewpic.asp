<!--#include file="Const.Asp"-->
<%CheckAdmin3%>
<%PageName="editnewpic"%>
<!--#include file="Top.Asp"-->
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
my=request("my")
change=request("change")
delet=request("delet")
addname=request("addname")
cmdok=request("cmdok")
set rs=server.createobject("adodb.recordset")
if my<>"" then
name=Replace(request("name"), "'", "''")
pwd=Replace(request("pwd"), "'", "''")
sql="select * from password where id=1"
rs.open sql,conn,1,3

rs("name")=name
rs("pwd")=md5(pwd)
rs.update
rs.close
end if

if change<>"" then
typena=request("typename")
sql="select * from type where typeid="&Replace(request("typeid"), "'", "''")
rs.open sql,conn,1,3

rs("type")=typena
rs.update
rs.close
end if

if request("changemovie")<>"" then
sql="select * from movie where id="&clng(request("id"))
rs.open sql,conn,1,3
rs("movie")=trim(request("moviev"))
rs("ipsip")=trim(request("ipsipb"))
rs.update
rs.close
end if

if request("addmovieip")<>"" then
sql="select * from movie"
rs.open sql,conn,1,3
rs.addnew
rs("movie")=Replace(request("moviet"), "'", "''")
rs("ipsip")=Replace(request("ipsipt"), "'", "''")
rs.update
rs.close
end if

if delet<>"" then
   conn.execute"delete from type where typeid="&Replace(request("typeid"), "'", "''")
end if

if request("deletserver")<>"" then
   conn.execute"delete from movie where id="&clng(request("id"))
end if

if addname<>"" then
typer=request("type")
rs.open "select * from type",conn,1,3

rs.addnew
rs("type")=typer
rs.update
rs.close
end if

if cmdok<>"" then
   pic1=request("pic1")
   pic2=request("pic2")
   pic3=request("pic3")
   pic4=request("pic4")
   pic5=request("pic5")
   movie1=request("movie1")
   movie2=request("movie2")
   movie3=request("movie3")
   movie4=request("movie4")
   movie5=request("movie5")
   rs.open "select * from newpic",conn,1,3
   
   rs("pic1")=pic1
   rs("pic2")=pic2
   rs("pic3")=pic3
   rs("pic4")=pic4
   rs("pic5")=pic5
   rs("movie1")=movie1
   rs("movie2")=movie2
   rs("movie3")=movie3
   rs("movie4")=movie4
   rs("movie5")=movie5
   rs.update
   rs.close
end if

   set rs=nothing
   conn.close
   set conn=nothing
Response.Write("<script>alert(""恭喜!FLASH图片修改已成功"");location.href=""newpic.asp"";</script>")
	Response.End
%>



</body>
</html>
