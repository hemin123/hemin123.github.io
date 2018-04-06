<!--#include file="const.asp"-->
<!--#include file="Top.Asp"-->
<LINK href="admin.css" type=text/css rel=stylesheet>
<%CheckAdmin1%>
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
founderr=false

Dim ID,MusicID,SinGer,MusicName,SpecialName,Words,AddUser

ID	    = Request("id")
Words       = Request("Words")
MusicName   = Request("MusicName")
SinGer      = Request("SinGer")
Flag        = Request("Flag")
AddUser     = Request("AddUser")

Set Rs = Server.Createobject("adodb.recordset")
	sql="Select * From LrcWord Where ID=" & id
	Rs.open sql,conn,1,3
        If Rs.BOF Or Rs.EOF Then
        Rs.AddNew
    End If

		Rs("Words")       = Words
		If Flag = 1 And Words<>"" Then
			Rs("Flag") = True
		Else
			Rs("Flag") = False
		End If
		Rs("AddUser")     = AddUser
		Rs("MusicID")     = ID
		Rs("AddTime")     = Now()
                Rs("SinGer")	  = SinGer 		 
		Rs("MusicName")   = MusicName
		Rs("Words")	  = Words
		Rs("AddUser") 	  = AddUser
		Rs("AddTime")	  = AddTime
		Rs.update
%>
<table class="tableBorder" cellSpacing=0 cellPadding=0 width=100% align=center border=0>
  <TBODY>
    <TR>
      <TD height=50></TD>
    </TR>
  </TBODY>
</TABLE>
<table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
    <tr class="title">
      <td width="100%" Class="title">
          <table class="tableBorder" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
              <td width="100%" class="forumrow" height="80" align="center">
                <b><img src="Images/OK.gif" width="150" height="47"></b>
                <p><a href="Admin_LrcWord.Asp"><b>返 回</b> </a>
              </td>
            </tr>
          </table>
      </td>
    </tr>
  </table>
<%
	Rs.close
Set Rs = Nothing
Conn.Close
Set Conn = Nothing
%>
