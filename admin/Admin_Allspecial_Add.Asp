<!--#include file="Const.Asp"-->
<%CheckAdmin1%>
<%PageName="Filemodify"%>
<!--#include file="Top.asp"-->
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
Classid=cstr(trim(request.QueryString("classid")))
SClassid=cstr(trim(request.QueryString("sclassid")))
NClassid=cstr(trim(request.QueryString("Nclassid")))
Specialid=request.QueryString("Specialid")
AskClassid=request.QueryString("AskClassid")
AskSClassid=request.QueryString("AskSClassid")
AskNClassid=request.QueryString("AskNClassid")
set rs=server.createobject("adodb.recordset")
sql="select * from Special where Specialid="&Specialid
rs.open sql,conn,1,1
if rs.eof then
	errmsg="<li>操作错误！请联系管理员</li>"
	call error()
	Response.End 
else
	name=rs("name")
	classid=rs("classid")
	SClassid=rs("SClassid")
	Nclassid=rs("Nclassid")
	name=rs("name")
	pic=rs("pic")
	Times=rs("Times")
	Yuyan=rs("Yuyan")
	Gongsi=rs("Gongsi")
	intro=rs("intro")
rs.close
end if
%>
       <table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
<form method="POST" action="Admin_special_Err.Asp?Specialid=<%=Specialid%>&AskClassid=<%=request("AskClassid")%>&AskSClassid=<%=request("AskSClassid")%>&AskNClassid=<%=request("AskNClassid")%>&page=<%=request("page")%>" id=form2 name=form2>
          <tr class="title">
          <td width="100%" height="22" align=center background="images/manage/admin_bg_1.gif"><font color="#FFFFFF"><b>修 改 专 辑</b></font></td>
        </tr>
        <tr>
          <td width="100%" height="22" align=center>
                  <table class="tableBorder" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                      <td class="forumrow" width="100%" height="22">&nbsp;一级栏目：
	          <select  name="Classid" size="1" onChange="window.open('Admin_Allspecial_Add.Asp?Specialid=<%=Specialid%>&AskClassid=<%=Askclassid%>&AskSClassid=<%=AskSclassid%>&AskNClassid=<%=AskNclassid%>&page=<%=request("page")%>&Classid='+this.options[this.selectedIndex].value,'_self')">
<%
sql="select * from class"
rs.open sql,conn,1,1
Do until rs.eof
%>
                <option<%if (cstr(request("classid"))=cstr(rs("classid")) and request("classid")<>"") or (cstr(Classid)=cstr(rs("Classid")) and request("classid")="") then%> Selected<%end if%> value="<%=Cstr(rs("classid"))%>"><%=rs("class")%></option>
<%rs.MoveNext
Loop
rs.close
%>            </select>

              &nbsp;二级栏目：
<%if request("classid")<>"" or request("Sclassid")<>"" then
	if request("classid")<>"" then%>
              <select  name="Sclassid" size="1" onChange="window.open('Admin_Allspecial_Add.Asp?Specialid=<%=request("Specialid")%>&AskClassid=<%=request("Askclassid")%>&AskSClassid=<%=request("AskSclassid")%>&AskNClassid=<%=request("AskNclassid")%>&page=<%=request("page")%>&Classid=<%=request("Classid")%>&SClassid='+this.options[this.selectedIndex].value,'_self')">
<%	else%>
              <select  name="Sclassid" size="1" onchange="window.open('Admin_Allspecial_Add.Asp?Specialid=<%=request("Specialid")%>&AskClassid=<%=request("Askclassid")%>&AskSClassid=<%=request("AskSclassid")%>&AskNClassid=<%=request("AskNclassid")%>&page=<%=request("page")%>&Classid=<%=Classid%>&SClassid='+this.options[this.selectedIndex].value,'_self')">
<%	end if%>
                <option value="" <%if request("Sclassid")="" then%> selected<%end if%>>选择栏目</option>
<%
if request("classid")<>"" then
		sql="select * from Sclass where classid="&request("classid")
	else
		sql="select * from Sclass where classid="&classid
	end if
	rs.open sql,conn,1,1
	Do while not rs.eof
	%>
                <option<%if (cstr(request("Sclassid"))=cstr(rs("Sclassid")) and request("Sclassid")<>"") then%> selected<%end if%> value="<%=CStr(rs("Sclassid"))%>" name=Sclassid><%=rs("Sclass")%></option>
<%
	rs.MoveNext
	Loop
	rs.close

else

%>
              <select name="Sclassid" size="1" onchange="window.open('Admin_Allspecial_Add.Asp?Specialid=<%=request("Specialid")%>&AskClassid=<%=request("Askclassid")%>&AskSClassid=<%=request("AskSclassid")%>&AskNClassid=<%=request("AskNclassid")%>&page=<%=request("page")%>&Classid=<%=request("Classid")%>&SClassid='+this.options[this.selectedIndex].value,'_self')">
                <option value="">选择栏目</option>
<%
sql="select * from Sclass where classid="&Classid
	rs.open sql,conn,1,1
	Do while not rs.eof
	%>
                <option<%if cstr(Sclassid)=cstr(rs("Sclassid")) then%> selected<%end if%> value="<%=CStr(rs("Sclassid"))%>" name=Sclassid><%=rs("Sclass")%></option>
<%
	rs.MoveNext
	Loop
	rs.close

end if
%>
            </select>

              &nbsp;三级栏目：
<%if request("SClassid")<>"" or request("Nclassid")<>"" then
	if request("Sclassid")<>"" then%>
              <select  name="Nclassid" size="1" onChange="window.open('Admin_Allspecial_Add.Asp?Specialid=<%=request("Specialid")%>&AskClassid=<%=request("Askclassid")%>&AskSClassid=<%=request("AskSclassid")%>&AskNClassid=<%=request("AskNclassid")%>&page=<%=request("page")%>&Classid=<%=request("Classid")%>&SClassid=<%=request("SClassid")%>&NClassid='+this.options[this.selectedIndex].value,'_self')">
<%	else%>
              <select name="Nclassid" size="1" onchange="window.open('Admin_Allspecial_Add.Asp?Specialid=<%=request("Specialid")%>&AskClassid=<%=request("Askclassid")%>&AskSClassid=<%=request("AskSclassid")%>&AskNClassid=<%=request("AskNclassid")%>&page=<%=request("page")%>&Classid=<%=Classid%>&SClassid=<%=request("SClassid")%>&NClassid='+this.options[this.selectedIndex].value,'_self')">
<%	end if%>
                <option value="" <%if request("Nclassid")="" then%> selected<%end if%>>选择栏目</option>
<%
	if request("Sclassid")<>"" then
		sql="select * from Nclass where Sclassid="&request("Sclassid")
	else
		sql="select * from Nclass where Sclassid="&Sclassid
	end if
	rs.open sql,conn,1,1
	Do while not rs.eof
%>
                <option<%if (cstr(request("Nclassid"))=cstr(rs("Nclassid")) and request("Nclassid")<>"") then%> selected<%end if%> value="<%=CStr(rs("Nclassid"))%>" name=Nclassid><%=rs("Nclass")%>ff</option>
<%
	rs.MoveNext
	Loop
	rs.close

else
%>
              <select name="Nclassid" size="1" onchange="window.open('Admin_Allspecial_Add.Asp?Specialid=<%=request("Specialid")%>&AskClassid=<%=request("Askclassid")%>&AskNClassid=<%=request("AskNclassid")%>&page=<%=request("page")%>&Classid=<%=request("Classid")%>&SClassid=<%=request("SClassid")%>&NClassid='+this.options[this.selectedIndex].value,'_self')">
                <option value="">选择栏目</option>
<%
	sql="select * from Nclass where Sclassid="&SClassid
	rs.open sql,conn,1,1
	Do while not rs.eof
%>
                <option<%if cstr(Nclassid)=cstr(rs("Nclassid")) then%> selected<%end if%> value="<%=CStr(rs("Nclassid"))%>" name=Nclassid><%=rs("Nclass")%></option>
<%
	rs.MoveNext
	Loop
	rs.close
end if
%>
            </select></td>
                    </tr>
                  </table>
           </td>
        </tr>
		<tr>
          <td width="100%" align=left>
                  <table class="tableBorder" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                      <td class="forumrow" width="15%" align="right">专辑名称：</td>
                      <td class="forumrow" width="85%"><input type="text" name="name" value="<%=name%>" size="20"></td>
                    </tr>
                    <tr>
                      <td class="forumrow" width="15%" align="right">所属语言：</td>
                      <td class="forumrow" width="85%"><input type="text" name="Yuyan" value="<%=Yuyan%>" size="20"></td>
                    </tr>
                    <tr>
                      <td class="forumrow" width="15%" align="right">唱片公司：</td>
                      <td class="forumrow" width="85%"><input type="text" name="Gongsi" value="<%=Gongsi%>" size="20"></td>
                    </tr>
                    <tr>
                      <td class="forumrow" width="15%" align="right">发行日期：</td>
                      <td class="forumrow" width="85%"><input type="text" name="Times" value="<%=Times%>" size="20"></td>
                    </tr>
                    <tr>
                      <td class="forumrow" width="15%" align="right">专辑图片：</td>
                      <td class="forumrow" width="85%"><input type="text" name="pic" value="<%=pic%>" size="20"></td>
                    </tr>
                    <tr>
                      <td class="forumrow" align="right">自定义更新时间：</td>
                      <td class="forumrow"><input name="Date" type="text" id="Date" value="<%=now()%>" size="20">
时间格式如： 2006-5-15 11:30:09</td>
                    </tr>
                    <tr>
                      <td class="forumrow" width="15%" align="right">专辑简介：</td>
                      <td class="forumrow" width="85%"><TEXTAREA  name="intro" rows=5 cols="60"><%=htmlencode1(intro)%></TEXTAREA></td>
                    </tr>
                    <tr>
                      <td width="15%" align="right"></td>
                      <td width="85%"></td>
                    </tr>
                    <tr>
                      <td width="15%" align="right"></td>
                      <td width="85%"></td>
                    </tr>
                  </table>
		  </td>
        </tr>
        <tr>
          <td width="100%" height="25" class="forumrow" align=center>
              <input type="hidden" style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF"  value="edit" name="act"> 
              <input type="submit" style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF"  value=" 修 改 " name="cmdok2">&nbsp; 
              <input type="reset" style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF"  value=" 重 改 " name="cmdcance2l"></td>
        </tr>
       </form>
      </table>
<%
set rs=nothing
conn.close
set conn=nothing
%></body></html>
