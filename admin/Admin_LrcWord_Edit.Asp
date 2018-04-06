<!--#include file="Const.Asp"-->
<!--#include file="../PL_INC/Cls_ShowoPage.asp"-->
<%CheckAdmin1%>
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
	Dim MusicID,SinGer,MusicName,SpecialName,Words,Flag,AddUser
	Set Rs = Server.Createobject("adodb.recordset")
	Sql="Select * from LrcWord Where Musicid="&request("id") 
	Rs.Open Sql,Conn,1,1
	If Not Rs.EOF Then
		MusicID 	= Rs("MusicID")
		SinGer 		= Rs("SinGer")
		MusicName	= Rs("MusicName")
		SpecialName	= Rs("SpecialName")
		Words		= Rs("Words")
		Flag		= Rs("Flag")
		AddUser		= Rs("AddUser")

%>
<body topmargin="111" leftmargin="0">
<div align=center>
<form name="WordsForm" action="Admin_LrcWord_Err1.Asp?id=<%=Request("id")%>"  method="POST">
 <input type="hidden" name="TempID" value="0">
 <table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
	<tr class="title">
          <td height=20 colspan=2 align=center background="images/manage/admin_bg_1.gif" Class="title"><strong>LRC歌词编辑</strong></td>
    </tr>
	<tr>
	  <td width="10%" height=22 class="forumrow" align=center><strong>所属歌手</strong></td>
	  <td height=22 class="forumrow"><b><%=SinGer%></b></td>
	</tr>
	<tr>
	  <td width="10%" height=22 class="forumrow" align=center><strong>歌曲名字</strong></td>
	  <td height=22 class="forumrow"><b><%=MusicName%></b></td>
	</tr>
	<tr>
	  <td width="10%" height=22 class="forumrow" align=center><strong>所属专辑</strong></td>
	  <td height=22 class="forumrow"><b><%=SpecialName%></b></td>
	</tr>
	<tr>
	  <td width="10%" height=22 class="forumrow" align=center><strong>歌词内容</strong></td>
	  <td height=22 class="forumrow">
		<TEXTAREA name="Words" rows=10 cols=60"><%=htmlencode1(Words)%></TEXTAREA>
	  </td>
	</tr>
	<tr>
	  <td width="10%" height=22 class="forumrow" align=center><strong>歌词锁定</strong></td>
	  <td height=22 class="forumrow"><input type="checkbox" name="Flag" value="1" <%If Flag=True Then:Response.Write "Checked":End If%>></td>
	</tr>
	<tr>
	  <td width="10%" height=22 class="forumrow" align=center><strong>歌词添加人</strong></td>
	  <td height=22 class="forumrow"><input type="text" name="AddUser" value="<%=AddUser%>"></td>
	</tr>
	<tr>
          <td height=20 align=center class="forumrow" colspan=2>
		<input type=submit name=submit value="修 改"> <input type=reset name=reset value="清 除">
	  </td>
          </tr>
	<tr>

  </table>
</form>

<%

	Rs.Close
	Set Rs = Nothing
%>


<%
	Else
Set Rs = Server.Createobject("adodb.recordset")
	Sql="Select * from MusicList Where id="&request("id") 
	Rs.Open Sql,Conn,1,1
        If Not Rs.EOF Then
%>
<form name="WordsForm" action="Admin_LrcWord_Err.Asp?id=<%=Request("id")%>"  method="POST">
 <input type="hidden" name="TempID" value="0">
 <table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
	<tr class="title">
          <td height=20 align=center Class="title" colspan=2><strong>LRC歌词编辑</strong></td>
          </tr>
        <tr>
	  <td width="10%" height=22 class="forumrow" align=center><strong>歌曲名字</strong></td>
	  <td height=22 class="forumrow"><input type="text" name="MusicName" value="<%=rs("MusicName")%>" size="50"></td>
	</tr>
          <tr>
	  <td width="10%" height=22 class="forumrow" align=center><strong>所属歌手</strong></td>
	  <td height=22 class="forumrow"><input type="text" name="SinGer" value="<%=rs("SinGer")%>" size="50"></td>
	</tr>
	<tr>
	  <td width="10%" height=22 class="forumrow" align=center><strong>歌词内容</strong></td>
	  <td height=22 class="forumrow">
		<TEXTAREA name="Words" rows=10 cols=60"></TEXTAREA>
	  </td>
	</tr>
	<tr>
	  <td width="10%" height=22 class="forumrow" align=center><strong>歌词锁定</strong></td>
	  <td height=22 class="forumrow"><input type="checkbox" name="Flag" value="1" <%If Flag=True Then:Response.Write "Checked":End If%>></td>
	</tr>
	<tr>
	  <td width="10%" height=22 class="forumrow" align=center><strong>歌词添加人</strong></td>
	  <td height=22 class="forumrow"><input type="text" name="AddUser" value="<%=AddUser%>"></td>
	</tr>
	<tr>
          <td height=20 align=center class="forumrow" colspan=2>
		<input type=submit name=submit value="修 改"> <input type=reset name=reset value="清 除">
	  </td>
          </tr>
	<tr>

  </table>
</form>		
<%
	End if
        End if

	Conn.Close
	Set Conn = Nothing
%>
