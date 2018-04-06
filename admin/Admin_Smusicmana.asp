<!--#include file="const.asp"-->
<%CheckAdmin3%>
<%pagename="admin_Smusicmana"%>
<!--#include file="Top.Asp"-->
<link rel="stylesheet" href="Images/Admin_Style.Css">
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
if not isempty(request("page")) then
currentPage=cint(request("page"))
else
currentPage=1
end if
%>
<table class="tableBorder" border="0" width="100%" cellspacing="1" cellpadding="1">
<tr>
<td align=center valign=top>
<%
set rs=server.createobject("adodb.recordset")
sql="select * from Basic order by id desc"
rs.open sql,conn,1,1
if rs.eof and rs.bof then
response.write "<p align='center'>暂时没有点歌</p>"
else
MaxPerPage=15
totalPut=rs.recordcount
if currentpage<1 then currentpage=1
if (currentpage-1)*MaxPerPage>totalput then
if (totalPut mod MaxPerPage)=0 then
currentpage= totalPut \ MaxPerPage
else
currentpage= totalPut \ MaxPerPage + 1
end if
end if
if currentPage=1 then
showpage totalput,MaxPerPage,"admin_SMusicMana.asp"
showContent
showpage totalput,MaxPerPage,"admin_SMusicMana.asp"
else
if (currentPage-1)*MaxPerPage<totalPut then
rs.move  (currentPage-1)*MaxPerPage
dim bookmark
bookmark=rs.bookmark
showpage totalput,MaxPerPage,"admin_SMusicMana.asp"
showContent
showpage totalput,MaxPerPage,"admin_SMusicMana.asp"
else
currentPage=1
showpage totalput,MaxPerPage,"admin_SMusicMana.asp"
showContent
showpage totalput,MaxPerPage,"admin_SMusicMana.asp"
end if
end if
rs.close
end if

sub showContent
dim i
i=0
%>
<table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
<tr class="title">
<td height=24 colspan="8" align="center"><font color="#FFFFFF">点 歌 管 理</font></td>
</tr>
<tr>
<td width="5%" class="forumrow" align=center>序号</td>
<td width="10%" class="forumrow" align=center>点歌人</td>
<td width="10%" class="forumrow" align=center>点歌给</td>
<td width="20%" class="forumrow" align=center>歌名</td>
<td width="26%" class="forumrow" align=center>祝福</td>
<td width="13%" class="forumrow" align=center>时间</td>
<td width="8%" class="forumrow" align=center>删除</td>
</tr>
<%do while not rs.eof
i=i+1
%>
<tr height="22">
<td width="5%" class="forumrow" align=center><%=rs("id")%>　</td>
<td width="10%" class="forumrow" align=center><%=rs("myname")%>　</td>
<td width="10%" class="forumrow" align=center><%=rs("yourname")%>　</td>
<td width="20%" class="forumrow" align=center><%=rs("title")%>　</td>
<td width="26%" class="forumrow" align=center><%=rs("content")%>　</td>
<td width="13%" class="forumrow" align=center><%=rs("jtime")%>　</td>
<td width="8%" class="forumrow" align=center><a href="Admin_SMusicDel.asp?id=<%=rs("id")%>&page=<%=CurrentPage%>">删除</a></td>
</tr>
<%
if i>=MaxPerPage then exit do
rs.movenext
loop
%>
</table>
<%
end sub

function showpage(totalnumber,maxperpage,filename)
dim n
if totalnumber mod maxperpage=0 then
n= totalnumber \ maxperpage
else
n= totalnumber \ maxperpage+1
end if
%>
<form method=Post action="<%=filename%>?classid=<%=classid%>&Nclassid=<%=Nclassid%>">
<center>共<font color="<%=AlertFColor%>"><b><%=totalnumber%></b></font>项点歌
<%if CurrentPage<2 then%>
&nbsp;首页 上一页&nbsp;
<%else%>
&nbsp<a href="<%=filename%>?page=1&classid=<%=classid%>&Nclassid=<%=Nclassid%>">首页</a>&nbsp;
<a href="<%=filename%>?page=<%=CurrentPage-1%>&classid=<%=classid%>&Nclassid=<%=Nclassid%>">上一页</a>&nbsp;
<%
end if
if n-currentpage<1 then
%>
下一页 末页
<%else%>
<a href="<%=filename%>?page=<%=CurrentPage+1%>&classid=<%=classid%>&Nclassid=<%=Nclassid%>">下一页</a>
<a href="<%=filename%>?page=<%=n%>&classid=<%=classid%>&Nclassid=<%=Nclassid%>">末页</a>
<%end if%>
&nbsp;页次:<strong><font color="<%=AlertFColor%>"><%=CurrentPage%>/<%=n%></font></strong>页
转到:<select name="page" size="1" onchange="javascript:submit()">
<%for i = 1 to n%>
<option value="<%=i%>" <%if cint(CurrentPage)=cint(i) then%> selected <%end if%>>第<%=i%>页</option>
<%next%>
</select>
</form>

<%
end function
%>
</td>
</tr>
</table>
</div>
<%
set rs=nothing
conn.close
set conn=nothing
%></body></html>
