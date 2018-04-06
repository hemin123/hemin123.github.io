<!--#include file="const.asp"-->
<%CheckAdmin1%>
<%PageName="V800_4"%>
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
    <td height="22" colspan="3" align="center"><strong>添 加 编 辑 专 辑 (第一步)</strong></td>
  </tr></table>
         <table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
                  
<%
		sql2="select * from SClass where Classid="&rs("Classid")&" order by Sclassid"
		rs2.open sql2,conn,1,1
		if rs2.eof then
		else
			j=0
			do while not rs2.eof
			j=j+1
%>

	                   <tr>
                      <td width="100%" class="forumrow">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=j%>.&nbsp;&nbsp;&nbsp;<a title="进入管理 <%=rs2("sclass")%> 所属歌手 " href=Admin_special_Add.Asp?Classid=<%=rs("Classid")%>&SClassid=<%=rs2("SClassid")%>><%=rs2("SClass")%></font></a></td>
                     
              
                  
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
