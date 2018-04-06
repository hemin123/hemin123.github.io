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
founderr=false

id=request.QueryString("id")
set rs=server.createobject("adodb.recordset")
sql="select * from admin where id="&id
rs.open sql,conn,1,1
if rs.eof then
	errmsg=errmsg+"<br>"+"<li>服务器出错！请联系管理员"
	founderr=true
else
	Username=rs("Username")
	Password=rs("Password")
	oskey=rs("oskey")
rs.close
end if

if founderr=true then
	call error()
else
%>
<!--#include file="Top.Asp"-->
<LINK href="admin.css" type=text/css rel=stylesheet>
<div align="center">
<center>
<table class="tableBorder" border="0" width="100%" cellspacing="0" cellpadding="5">
  <tr>
    <td align=center valign=top>
      <table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
        <form method="POST" action="Admin_Admin_Err.asp?id=<%=id%>" id=form2 name=form2>
          <tr class="title">
            <td width="100%" height="20" colspan=2 align=center background="images/manage/admin_bg_1.gif"><font color="white"><b>修 改 管 理 员 资 料</b></td>
          </tr>
          <tr>
            <td width="30%" align="right" class="forumrow" height="30">用户名：</td>
            <td class="forumrow" width="70%">
           <input type="text" name="username" value="<%=Username%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" align="right" valign="top" class="forumrow" height="20">密码：</td>
            <td class="forumrow" width="70%">
           <input type="password" name="password" value="<%=Password%>" size="20"></td>
          </tr>
          <tr>
            <td width="30%" align="right" class="forumrow" height="30">权限：</td>
            <td width="70%" class="forumrow" height="30">
              <select name="oskey" style="font-size:9pt">
                <option value=super<%if oskey="super" then%> selected<%end if%>>高级管理员</option>
                <option value=check<%if oskey="check" then%> selected<%end if%>>中级管理员</option>
                <option value=input<%if oskey="input" then%> selected<%end if%>>初级管理员</option>
              </select>
            </td>
          </tr>
          <tr align="center">
            <td class="forumrow" colspan=2>
             <input style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF"  type="hidden" value="edit" name="act"> 
             <input style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF"  type="submit" value=" 修 改 " name="cmdok2">&nbsp; 
             <input style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF"  type="reset" value=" 清 除 " name="cmdcance2l">
            </td>
          </tr>
        </form>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
<%end if%>
