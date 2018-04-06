<!--#include file="const.asp"-->
<%CheckAdmin3%>
<!--#include file=Top.Asp-->
<LINK href="admin.css" type=text/css rel=stylesheet>
<BODY leftmargin="0" bottommargin="0" rightmargin="0" topmargin="0" marginheight="0" marginwidth="0">
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
call main()
	
sub main()
%>
<table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
<tr>
<th align=center colspan=3   width="717" height=1>
</th>
<tr width="100%">
<td class="forumrow"><font color=red>本操作仅限高级、对SQL编程比较熟悉的用户<br>
您可以直接输入SQL执行语句，比如:<br>
DELETE FROM user WHERE username='zwa'<br>
进行删除某用户，在操作前请慎重考虑您的执行语句是否正确和完整，执行后不可恢复。</font></td>
</tr>
<%
if request("action") = "save" then
dim SQL_Statement
SQL_Statement=Request("SQL_Statement")
if SQL_Statement<>Empty then
On Error Resume Next 
conn.Execute(SQL_Statement)
if err.number="0" then%>
<tr><th align=center colspan=3  width="717" height=1><b>执行结果</b></th>  
</tr>
<tr><td align=center colspan=3  width="717" height=1><%=SQL_Statement%>
</td>                                                                                 
</tr>
<%
else%>
<tr><th align=center colspan=3  width="717" height=1><b>执行结果</b></th>  
</tr>
<tr><td align=center colspan=3  width="717" height=1><%response.write "语句有问题，具体出错如下：<br>"
response.write Err.Description%>
</td>                                                                                 
</tr>
<%
err.clear
end if
end if
else
%>
<tr><th align=center colspan=3 width="717" height=1><b>请输入SQL语句</b></th>  
</tr>
<tr><td align=center colspan=3 width="717" class="forumrow"><Form Name=FormPst Method=Post Action="Admin_Data_Sql.asp?action=save">
<FieldSet>
<Legend>请输入SQL语句</Legend>
指令：<input type="text" name="SQL_Statement" size=80> <p>
<Input style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" type="Submit" Value="送出"> <p>
</FieldSet>
</Form></td>                                                                                 
</tr>
<%
        end if
	end sub
%>
