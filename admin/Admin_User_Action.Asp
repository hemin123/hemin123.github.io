<!--#include file="Const.Asp"-->
<%CheckAdmin3%>
<%PageName="admin_UserModify"%>
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
id=request.QueryString("id")
set rs=server.createobject("adodb.recordset")
sql="select * from [user] where id="&id
rs.open sql,conn,1,1
if rs.eof then
	errmsg="<br>操作错误！请联系管理员"
	call error()
	Response.end
else
	Username=rs("Username")
	Password=rs("Password")
	Sex=rs("Sex")
	Email=rs("Email")
	Tel=rs("Tel")
	Name=rs("Name")
	Address=rs("Address")
	Youbian=rs("Youbian")
	Shenfenzheng=rs("Shenfenzheng")
	loginip=rs("loginip")
	qq=rs("qq")
	adddate=rs("adddate")
	logindate=rs("logindate")
	vipdate=rs("vipdate")
rs.close
end if
%>
<!--#include file="Top.Asp"-->
<LINK href="admin.css" type=text/css rel=stylesheet>
<div align="center">
<table class="tableBorder" border="0" width="100%" cellspacing="1" cellpadding="1">
  <tr>
    <td align=center valign=top>
      <table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
        <form method="POST" action="Admin_User_Err.asp?id=<%=id%>" id=form2 name=form2>
          <tr class="title">
            <td width="100%" height="20" colspan=2 align=center background="images/manage/admin_bg_1.gif">修 改 用 户 资 料</td>
          </tr>
          <tr>
            <td class="forumrow" width="30%" height="20" align="right">用户ID：</td>
            <td class="forumrow" width="70%"><input type="text" name="username" value="<%=Username%>" size="20"></td>
          </tr>
          <tr>
            <td class="forumrow" width="30%" height="20" align="right" valign="top">密码：</td>
            <td class="forumrow" width="70%"><input type="password" name="password" value="<%=Password%>" size="20"></td>
          </tr>
          <tr>
            <td class="forumrow" width="30%" height="20" align="right">性别：</td>
            <td class="forumrow" width="70%"><input type="text" name="Sex" value="<%=Sex%>" size="20"></td>
            </td>
          </tr>
          <tr>
            <td class="forumrow" width="30%" height="20" align="right">E-mail：</td>
            <td class="forumrow" width="70%"><input type="text" name="Email" value="<%=Email%>" size="20"></td>
          </tr>
          <tr>
            <td class="forumrow" width="30%" height="20" align="right">真实姓名：</td>
            <td class="forumrow" width="70%"><input type="text" name="Name" value="<%=Name%>" size="20"></td>
          </tr>

          <tr>
            <td class="forumrow" width="30%" height="20" align="right">身份证号：</td>
            <td class="forumrow" width="70%"><input type="text" name="Shenfenzheng" value="<%=Shenfenzheng%>" size="20"></td>
          </tr>
          <tr>
            <td class="forumrow" width="30%" height="20" align="right">联系电话：</td>
            <td class="forumrow" width="70%"><input type="text" name="Tel" value="<%=Tel%>" size="20"></td>
          </tr>
          <tr>
            <td class="forumrow" width="30%" height="20" align="right">详细地址：</td>
            <td class="forumrow" width="70%"><input type="text" name="Address" value="<%=Address%>" size="20"></td>
          </tr>
          <tr>
            <td class="forumrow" width="30%" height="20" align="right">邮政编码：</td>
            <td class="forumrow" width="70%"><input type="text" name="Youbian" value="<%=Youbian%>" size="20"></td>
          </tr>
          <tr>
            <td class="forumrow" width="30%" height="20" align="right">QQ号码：</td>
            <td class="forumrow" width="70%"><input type="text" name="qq" value="<%=qq%>" size="20"></td>
          </tr>
           <tr>
            <td class="forumrow" width="30%" height="20" align="right">冲值日期：</td>
            <td class="forumrow" width="70%"><%=adddate%></td>
          </tr>
           <tr>
            <td class="forumrow" width="30%" height="20" align="right">最后登陆：</td>
            <td class="forumrow" width="70%"><%=logindate%></td>
          </tr>
          <tr>
            <td class="forumrow" width="30%" height="20" align="right">最后 I P：</td>
            <td class="forumrow" width="70%"><%=loginip%></td>
          </tr>
           <tr>
            <td class="forumrow" width="30%" height="20" align="right">VIP期限：</td>
            <td class="forumrow" width="70%"><input type="text" name="vipdate" value="<%=vipdate%>" size="20">&nbsp;天</td>
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
</div>
<%
set rs=nothing
conn.close
set conn=nothing
%></body></html>
