<!--#include file="Const.Asp"-->
<%CheckAdmin2%>
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
set rs=server.createobject("adodb.recordset")
sql="select * from MusicList"
rs.open sql,conn,1,3
Num=100
for i=1 to Num
	Classic=request.form("Classic"&i)
	ConClassic=split(Classic,",")
	MusicName=trim(request.form("MusicName"&i))
	Wma=trim(request.form("Wma"&i))
	url=request.form("url")
	song_path=request.form("song_path")

	if MusicName="" or isnull(MusicName) or Wma="" or isnull(Wma) then
		Num=i-1
		exit for
	end if
	
	set NRs=server.createobject("adodb.recordset")
	Nsql="select NClass from NClass where NClassid="&ConClassic(2)
	NRs.open Nsql,conn,1,1
	if not NRs.eof then
		NClass=NRs("NClass")
	end if
	NRs.close
	
	rs.addnew
	rs("MusicName")=MusicName
	rs("Singer")=NClass
	rs("Classid")=ConClassic(0)
	rs("SClassid")=ConClassic(1)
	rs("NClassid")=ConClassic(2)
	rs("Specialid")=ConClassic(3)
	rs("Wma")=url&Wma
	rs("song_path")=song_path
	rs.update
next
rs.close
call Success

sub Success
%>
<BR><BR>
<table class="tableBorder" border="0" width="100%" cellspacing="1" cellpadding="1">
  <tr>
    <td>　
      <table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
        <tr class="title">
         <td width="100%" height="20" colspan=2 align=center><font color="white"><b>歌曲批量添加成功，共添加了<%=Num%>首歌曲</b> </td>
        </tr>
        <tr>
          <td align=center><input type="button" name="button1" value="返回" onClick="javascript:history.go(-2)">&nbsp;&nbsp;<input type="button" name="button2" value="继续添加" onClick="javascript:history.go(-1)"></td>
        </tr>
      </table>
 　 </td>
  </tr>
</table>
<%
end sub
set rs=nothing
conn.close
set conn=nothing
%>
