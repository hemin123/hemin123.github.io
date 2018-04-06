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
dim i
i=0 
MaxList=80
set rs=server.createobject("adodb.recordset")

sql="select * from class order by classid"
rs.open sql,conn,1,1
i=request("id")
if i="" then i=rs("Classid")
%>
<!--#include file="Top.Asp"-->
<LINK href="admin.css" type=text/css rel=stylesheet>
<table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" > 
  <tr class="title">
    <td height="30"> 
      <table class="tableBorder" cellpadding=3 cellspacing=1 border=0 width=100%>
        <tr class="title">
        <td height="22" colspan="3" align="center" background="images/manage/admin_bg_1.gif">服务器链接地址管理页面</td>
        </tr>
            <tr >              
          <td width="100%" valign=top class="forumrow">
<%
dim objFSO
dim fdata
dim objCountFile
Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
if request("save")="" then
  Set objCountFile = objFSO.OpenTextFile(Server.MapPath("../PL_INC/PL_Path.Asp"),1,True)
  If Not objCountFile.AtEndOfStream Then fdata = objCountFile.ReadAll
 else
  fdata=request("fdata")
  Set objCountFile=objFSO.CreateTextFile(Server.MapPath("../PL_INC/PL_Path.Asp"),True)
  objCountFile.Write fdata
 end if
 objCountFile.Close
 Set objCountFile=Nothing
 Set objFSO = Nothing
%> 
<form method=post>
            <table class="tableBorder" width="100%" border="0" cellspacing="3" cellpadding="0">
              <tr> 
                <td class="forumrow" width="3%" height="23"> </td>
                <td class="forumrow" width="97%" height="23">                      注意：文件将被保存在你安装目录下的<font color=red>PL_INC/PL_Path.Asp</font>文件里，如果您的空间不支持<font color=red>FSO</font>，请直接编辑该文件！<br>
                　　　如果您对html和js代码不了解，请只修改链接地址，其他不要随意编辑。</td>
              </tr>
              <tr> 
                <td class="forumrow" width="3%"></td>
                <td width="97%" bgcolor="#FFFFFF"> 
                  <textarea name="fdata" cols="110" rows="20"><%=fdata%></textarea>
                </td>
              </tr>
              <tr> 
                <td width="3%"> </td>
                <td class="forumrow" width="97%">
                  <input style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" type="reset" name="Reset" value="重新修改">
                  <input style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" type="submit" name="save" value="提交修改"> 当前文件路径：<b><%=Server.MapPath("../PL_INC/PL_Path.Asp")%></b>
                </td>
              </tr>
            </table>
</form>
            <p> </p>
            </td>
            </tr>
        </table>
        </td>
    </tr>
      </table>
<% 
set rs=nothing
conn.close
set conn=Nothing
%>
