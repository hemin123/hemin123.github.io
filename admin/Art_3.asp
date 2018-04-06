<!--#include file="const.asp"-->
<%CheckAdmin2%>
<%PageName="Art_3"%>
<!--#include file="Top.Asp"-->
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
dim i
set rs=server.createobject("adodb.recordset")
set rs2=server.createobject("adodb.recordset")

sql="select * from class order by classid"
rs.open sql,conn,1,1
i=request("id")
if i="" then i=rs("Classid")
do while not rs.eof
rs.movenext
loop
rs.close
sql="select * from class where classid="&i
rs.open sql,conn,1,1
if rs.eof then
else
%>

<table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
  <tr class="title"> 
    <td height="22" colspan="3" align="center" background="images/admin_bg_1.gif"><strong>歌 手 分 类 管 理</strong></td>
  </tr>
<%
	sql2="select * from SClass where Classid="&rs("Classid")&" order by Sclassid"
		rs2.open sql2,conn,1,1
		if rs2.eof then
%>
              <tr><td Class="title" align="center">尚无歌手分类</td></tr>
<%
			else
			j=0
			do while not rs2.eof
			j=j+1
%>

		<tr>
          <td width="100%" class="forumrow">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0"  align=center class="forumrow">
                  <form method="POST" action="Art_2.asp?act=rename&SClassid=<%=rs2("SClassid")%>" id=form<%=j%> name=form<%=j%>>
                    <tr>
                      <td class="forumrow" width="21%">&nbsp;&nbsp;<%=rs2("SClassid")%>.<%=rs2("SClass")%></td>
                      <td class="forumrow" width="27%"><input size=15 type="text" name="SClass" value="<%=rs2("SClass")%>">&nbsp;&nbsp;<input type="submit" value="改 名" name="Submit"></td>
                      <td class="forumrow" width="52%"><!--<a title='生成<%=rs2("SClass")%>所有歌手页面' href='make_type.asp?263=<%=rs2("sclassid")%>'><font color=BLUE>1.生成歌手页面</font></a>&nbsp;&nbsp;<a title='生成<%=rs2("SClass")%>所有专辑页面' href='make_specialall.asp?type=all&zzyy=<%=rs2("sclassid")%>'><font color=BLUE>2.生成专辑页面</font></a>&nbsp;&nbsp;<a title='生成<%=rs2("SClass")%>所有歌曲页面' href='make_musiclistall.asp?type=all&zzyy=<%=rs2("sclassid")%>'><font color=BLUE>3.生成歌曲页面</font></a>-->&nbsp;&nbsp;<a onclick="javascript:if (!window.confirm('您确认要删除这个栏目吗？此操作不可恢复，请慎重操作！')){return false;};" title="不到万一请不要使用此功能" href='Art_2.asp?act=del&SClassid=<%=rs2("SClassID")%>'><font color=red>删除</font></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                   </form>
                  </table>
		  </td>
        </tr>
<%
			rs2.movenext
			loop
		end if
		rs2.close

end if
rs.close
%>
      </table>
<% 
set rs=nothing
set rs2=nothing
conn.close
set conn=nothing

%>
</body>
</html>
