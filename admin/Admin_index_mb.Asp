<!--#include file="Const.Asp"-->
<%CheckAdmin3%>
<!--#include file="Top.Asp"-->
<%
'检查模板选择
	set rs1=server.CreateObject("ADODB.RecordSet")
	sql1="select * from mb where ison=1"
	rs1.open sql1,conn,1,1
	if not rs1.eof then
		mbid=rs1("id")
	else
		mbid=1
	end if
	rs1.close
	set rs1=nothing
%>
<link href='Admin.css' rel='stylesheet' type='text/css'>
<table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" > 
  <tr class="title">
    <td height="30">
      <table class="tableBorder" cellpadding=3 cellspacing=1 border=0 width=100%>      
        <tr class="title">
        <td height="22" colspan="3" align="center">首页模板管理页面-当前选择(<font color=red>模板<%=mbid%></font>)</td>
        </tr>       
            <tr >              
          <td width="100%" valign=top class="forumrow">
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
dim objFSO
dim fdata
dim objCountFile
Set objFSO = Server.CreateObject("Scripting.FileSystemObject")
if request("save")="" then
  Set objCountFile = objFSO.OpenTextFile(Server.MapPath("../model/index_mb"&mbid&".asp"),1,True)
  If Not objCountFile.AtEndOfStream Then fdata = objCountFile.ReadAll
 else
  fdata=request("fdata")
  Set objCountFile=objFSO.CreateTextFile(Server.MapPath("../model/index_mb"&mbid&".asp"),True)
  objCountFile.Write fdata
 end if
 objCountFile.Close
 Set objCountFile=Nothing
 Set objFSO = Nothing
%> 
<form method=post  height="100%">
            <table class="tableBorder" width="100%" border="0" cellspacing="1" cellpadding="2">
              <tr> 
                <td class="forumrow" width="100%" height="23">                      注意：文件将被保存在你安装目录下的<font color=red>../model/index_mb<%=mbid%>.asp</font>文件里，如果您的空间不支持<font color=red>FSO</font>，请直接编辑该文件！<br>
                　　　如果您对asp和js代码不了解,不要随意编辑。<font color=red>修改后点<B>生成首页</B>查看效果</font></td>
              </tr>
           <tr> 
                <td class="forumrow" width="100%"> 
                  <textarea textarea style="width:100%; height:100%" cols="102" rows="19" name="fdata"><%=fdata%></textarea>
                </td>
              </tr>
              <tr> 
                <td class="forumrow" width="100%">
                  <input type="reset" name="Reset" value="重新修改">
                  <input type="submit" name="save" value="提交修改"> <strong>当前选择(<font color=red>模板<%=mbid%></font>)</strong>当前文件路径：<b><%=Server.MapPath("../model/index_mb"&mbid&".asp")%></b>
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
set conn=nothing
%>
