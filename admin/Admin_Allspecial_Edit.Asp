<!--#include file="const.asp"-->
<%CheckAdmin1%>
<%PageName="Admin_Allspecial_Edit"%>
<!--#include file="Top.asp"-->
<LINK href="admin.css" type=text/css rel=stylesheet>
<table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1">
  <tr>
    <td align=center valign=top>
     <table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
             <form method="POST" action="Admin_Allmusic_Err.Asp">
          <tr class="title">
           <td width="100%" height="22" colspan=2 align=center><b>添 加 单 首 歌 曲</b></td>
          </tr>
          <tr>
           
            <td class="forumrow" colspan=2 width="100%" height="25">&nbsp;一级栏目:
              <select name="classid" size="1" onChange="window.open('Admin_Allspecial_Edit.Asp?classid='+this.options[this.selectedIndex].value,'_self')">
                <option value="" <%if request("classid")="" then%> selected<%end if%>>选择栏目</option>
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
set rs=server.createobject("adodb.recordset")
sql="select * from class"
rs.open sql,conn,1,1
do while not rs.eof
%>
                <option<%if cstr(request("classid"))=cstr(rs("classid")) and request("classid")<>"" then%> selected<%end if%> value="<%=CStr(rs("classID"))%>" name=classid><%=rs("class")%></option>
<%
rs.movenext
loop
rs.close
%>
              </select>
              二级栏目:
<%if request("classid")<>"" then%>
              <select name="sclassid" size="1" onChange="window.open('Admin_Allspecial_Edit.Asp?classid=<%=request("classid")%>&sclassid='+this.options[this.selectedIndex].value,'_self')">
                <option value="" <%if request("sclassid")="" then%> selected<%end if%>>选择栏目</option>
<%
	sql="select * from sclass where classid="&request("classid")
	rs.open sql,conn,1,1
	Do while not rs.eof
%>
                <option<%if cstr(request("sclassid"))=cstr(rs("sclassid")) and request("sclassid")<>"" then%> selected<%end if%> value="<%=CStr(rs("sclassid"))%>" name=sclassid><%=rs("sclass")%></option>
<%
	rs.MoveNext
	Loop
	rs.close
%>
<%else%>
              <select name="sclassid" size="1">
                <option value="" selected>选择栏目</option>
<%end if%>
              </select>
              三级栏目:
<%if request("Sclassid")<>"" then%>
              <select name="Nclassid" size="1" onChange="window.open('Admin_Allspecial_Edit.Asp?classid=<%=request("classid")%>&SClassid=<%=request("SClassid")%>&nclassid='+this.options[this.selectedIndex].value,'_self')">
                <option value="" <%if request("Nclassid")="" then%> selected<%end if%>>选择栏目</option>
<%
	sql="select * from Nclass where Sclassid="&request("Sclassid")
	rs.open sql,conn,1,1
	Do while not rs.eof
%>
                <option<%if cstr(request("Nclassid"))=cstr(rs("Nclassid")) and request("Nclassid")<>"" then%> selected<%end if%> value="<%=CStr(rs("Nclassid"))%>" name=Nclassid><%=rs("Nclass")%></option>
<%
	rs.MoveNext
	Loop
	rs.close
%>
<%else%>
              <select name="Nclassid" size="1">
                <option value="" selected>选择栏目</option>
<%end if%>
              </select>
            </td>
          </tr>
          <tr>
            <td width="15%" class="forumrow" align="right" height=25 >加入专辑：</td>
            <td class="forumrow" height=25 >
<%if request("Nclassid")<>"" then%>
              <select  name="Specialid" size="1">
                <option value="" <%if request("Specialid")="" then%> selected<%end if%>>选择专辑</option>
<%
	sql="select * from special where Nclassid="&request("Nclassid")
	rs.open sql,conn,1,1
	Do while not rs.eof
%>
                <option<%if cstr(request("Specialid"))=CStr(rs("Specialid")) then%> selected<%end if%> value="<%=CStr(rs("Specialid"))%>" name=Specialid><%=rs("name")%></option>
<%
	rs.MoveNext
	Loop
	rs.close
else
%>
              <select name="Specialid" size="1">
                <option value="" selected>选择专辑</option>
<%end if%>
              </select>
            </td>
          </tr>
          <tr>
            <td align="right" class="forumrow" height=25 ><font color="red">歌曲名：</font></td>
            <td class="forumrow" height=25><input type="text" name="MusicName" size="20"></td>
          </tr>
          <tr>
            <td class="forumrow" width="15%" height=25 align="right">歌曲地址：</td>
            <td class="forumrow" width="85%">
              <select name="song_path" size="1">
                <option value="0">根路径(0)</option>
                <option value="1" >根路径(一)</option>
                <option value="2" >根路径(二)</option>
                <option value="3" >根路径(三)</option>
                <option value="4" >根路径(四)</option>
                <option value="5" >根路径(五)</option>
                <option value="6">根路径(六)</option>
              </select> <input type="text" name="Wma" size="30"></td>
           
          </tr>
          <tr>
            <td colspan=2 height=25 class="forumrow" align=center>
              <input type="hidden" value="add" name="act">
<%if request("Classid")="" then%>
              <input type="button"  style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" value=" 确 定 " name="cmdok" onClick="window.alert('请先选择一级栏目！')">&nbsp; 
<%elseif request("SClassid")="" then%>
              <input type="button" style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" value=" 确 定 " name="cmdok" onClick="window.alert('请先选择二级栏目！')">&nbsp; 
<%elseif request("NClassid")="" then%>
              <input type="button"  style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" value=" 确 定 " name="cmdok" onClick="window.alert('请先选择三级栏目！')">&nbsp; 
<%else%>
              <input type="submit"  style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" value=" 确 定 " name="cmdok">&nbsp; 
<%end if%>
              <input type="reset"  style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" value=" 清 除 "  name="cmdcancel">
            </td>
          </tr>
        </form>
      </table>
    </td>
  </tr>
</table>
<%
set rs=nothing
conn.close
set conn=nothing
%></body></html>
