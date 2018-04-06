<!--#include file="Const.Asp"-->
<LINK href="admin.css" type=text/css rel=stylesheet>
<%CheckAdmin1%>
<%PageName="SongConAdd"%>
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
Specialid=request.QueryString("Specialid")
set rs=server.createobject("adodb.recordset")
i=0
sql="select * from Special where Specialid="&cstr(Specialid)
rs.open sql,conn,1,3
if rs.EOF then
	errmsg= "<li>服务器出错！请联系管理员</li>"
	call error()
	Response.End
else
i=i+1
%>
<form name="form1" method="POST" action="Admin_Allspecial_Ok.Asp"> 
<table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
        <tr class="title"> 
 <td width="100%" height="20" colspan=3 align=center><b>批 量 添 加 歌 曲</b></td> 
</tr> 
<tr align="left" valign="middle"> 
<td class="forumrow" height="92">
<script language="javascript"> 
function setid() 
{ 
str='<br>'; 
if(!window.form1.upcount.value) 
window.form1.upcount.value=1; 
for(i=1;i<=window.form1.upcount.value;i++) 
str+='<li>歌曲名称'+i+':<input  style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" name="MusicName'+i+'" size=25><input type="text" name="Wma'+i+'" value="'+i+'.Wma" size=16><select name="Classic'+i+'" size="1"><option name=option<%=rs("Classid")%><%=i%> selected value="<%=rs("Classid")%>,<%=rs("SClassid")%>,<%=rs("NClassid")%>,<%=rs("Specialid")%>"><%=rs("Name")%></option></select></li><br><br>'; 
window.upid.innerHTML=str+'<br>'; 
} 
</script> 
<li>需要添加几首 
<input type="text" name="upcount" style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" value="20"> 
<input type="button" name="Button" style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" onclick="setid();" value="设定"> 
</li> 
<br> 
<br> 
<li>服务器地址: 
              <select name="song_path" size="1">
                <option value="1" >根路径(一)</option>
                <option value="2" >根路径(二)</option>
                <option value="3" >根路径(三)</option>
                <option value="4" >根路径(四)</option>
                <option value="5" >根路径(五)</option>
              </select> <input type="text" name="url" value="/音乐地址" size="75">   
<font color="red"><b>请正确填写</b></font></li> 
</td> 
</tr> 
<tr class="forumrow" align="center" valign="middle"> 
<td class="forumrow" align="left" id="upid" height="122">
</td> 
</tr> 
<tr align="center" valign="center" > 
<td class="forumrow" height="25"> 
<input  style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" type="submit" name="Submit" value=" 提交 ">&nbsp;  
<input  style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" type="reset" name="Submit2" value=" 清除 "> 
</td> 
</tr> 
</table> 
</form> 
<script language="javascript"> 
setid(); 
</script>
<%
end if
rs.close
set rs=nothing
conn.close
set conn=nothing
%>
