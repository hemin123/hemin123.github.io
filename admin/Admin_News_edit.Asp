<!--#include file="Const.Asp"-->
<%CheckAdmin3%>
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
if request.Form("flag")="edit" then
	set rs1=server.createobject("adodb.recordset")
	stype=request.Form("stype")
	sql1="select * from News where id="&request("id")
	rs1.open sql1,conn,1,3
	rs1("title")=request.Form("title")
	rs1("content")=request.Form("content")
	rs1("pubtime")=now()
	rs1.update
	rs1.close
	set rs1=nothing
	response.Write("<script language='javascript'>alert('修改成功');location.replace('admin_news.asp');</script>")
	response.end
end if
%>

<!--#include file="Top.Asp"-->
<LINK href="admin.css" type=text/css rel=stylesheet>
<table class="tableBorder" border="0" width="100%" cellspacing="1" cellpadding="1">
 <tr>
<td align=center valign=top>
<%
	set rs=server.createobject("adodb.recordset")
	sql="select * from News where id="&request("id")
	rs.open sql,conn,1,1
%>
            <table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
                  <form name="form2" method="post" action="?"><tr>
                <td height=37 colspan="2" align=center background="images/manage/admin_bg_1.gif" class="title">修改信息</td>
                </tr>
                  <tr>
                    <td width="20%" align=center class="tdbg">标题:</td>
                    <td width="80%" class="tdbg"><input name="title" type="text" id="title" value="<%=rs("title")%>" size="60" >
                      <span class="tdbg"></span></td>
                    </tr>
                  <tr>
                    <td height=37 align=center class="tdbg">详细信息:</td>
                    <td class="tdbg"><textarea name="content" cols="80" rows="15" id="content"><%=rs("content")%></textarea></td>
                    </tr>
              <tr>
                <td height="22" class="forumrow" align=center>　</td>
                <td class="forumrow" align=center><input type="submit" name="Submit" value="确认修改"><input type="hidden" name="flag" value="edit"><input type="hidden" name="id" value="<%=request("id")%>"></td>
                </tr>
</form>
        </table>
    </td>
  </tr>
</table>
<%
set rs=nothing
conn.close
set conn=nothing%>
</body>
</html>
