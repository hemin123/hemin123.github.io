<!--#include file="Const.Asp"-->
<%CheckAdmin1%>
<%PageName="Admin_Nclass_Add"%>
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
NClassid=cstr(trim(request.QueryString("Nclassid")))
%>
<script>
function submitonce(theform){
	//if IE 4+ or NS 6+
	if (document.all||document.getElementById){
	//screen thru every element in the form, and hunt down "submit" and "reset"
	for (i=0;i<theform.length;i++){
		var tempobj=theform.elements[i]
		if(tempobj.type.toLowerCase()=="submit"||tempobj.type.toLowerCase()=="reset")
		//disable em
		tempobj.disabled=true
		}
	}
}
</script>
     <table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" >
         <tr class="title">
          <td width="100%" height="20" align=center background="images/manage/admin_bg_1.gif">歌　手　资　料</td>
       </tr></table>
        <table class="tableBorder" width="100%" border="0" cellspacing="0" cellpadding="0"  align=center>
 <form method="POST" action="Admin_Nclass_Err.Asp?act=rename&NClassid=<%=NClassid%>">
       	<tr>
          <td width="100%" class="forumrow">
                  <table class="tableBorder" border="0" cellpadding="3" cellspacing="0" width="84%" height="497" style="border-collapse: collapse" bordercolor="#111111">
                  <%
set rs=server.createobject("adodb.recordset")
	sql="select * from nclass where nclassid="&nclassid
	rs.open sql,conn,1,1
	abcd=rs("abcd")
	nclass=rs("nclass")
	pic=rs("pic")
	da=rs("da")
	SClassID=rs("SClassID")
set rs=nothing
conn.close
set conn=nothing

%>
                  
                    <tr>
                      <td width="15%" height="26" class="forumrow" align="right">歌手名称：</td>
                      <td height="26" class="forumrow" colspan="2"><input type="text" value="<%=nclass%>" name="NClass" size="20"></td>
                    </tr>
                                   <tr>
                      <td width="15%" height="25" class="forumrow" align="right">名字索引：</td>
                      <td height="25" class="forumrow" colspan="2"><input type="text" name="ABCD" value="<%=abcd%>" size="20"></td>
                    </tr>
                                   <tr>
                                     <td height="25" class="forumrow" align="right">对应栏目ID：</td>
                                     <td height="25" class="forumrow" colspan="2"><label>
                                       <input name="SClassID" type="text" id="SClassID" value="<%=SClassID%>" size="20">
                                     （如华人男歌手，女歌手,日韩男歌手等，具体ID请到<a href="Art_3.asp?id=1" target="_blank" style="color: #FF0000; font-weight: bold">这里查看</a>）</label></td>
                                   </tr>
                                        <tr>
                      <td width="15%" height="26" align="right" class="forumrow">歌手照片：</td>
                      <td width="15%" height="26" class="forumrow"><input type="text" name="pic" value="<%=pic%>" size="20"> </td>
                      <td width="80%" height="26" class="forumrow">
                      <iframe name="I1" width="369" height="20" src="upload.htm" scrolling="no" border="0" frameborder="0">
                      浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe></td>
                    </tr>
                    <tr>
                      <td width="5%" height="1" align="right"></td>
                      <td height="1" colspan="2"> <font color="#808080">
                      上传后所有文件都将命名为***.JPG</font></td>
                    </tr>
                    <tr>
                      <td width="5%" height="69" align="right" class="forumrow">明星档案：</td>
                      <td height="69" colspan="2" class="forumrow"><TEXTAREA name="da" rows=30 cols="85"><%=da%></TEXTAREA></td>
                    </tr>
                    <tr>
                      <td width="5%" align="right" height="1"></td>
                      <td height="1" colspan="2"></td>
                    </tr>
                    <tr>
                      <td width="5%" align="right" height="1"></td>
                      <td height="1" colspan="2"></td>
                    </tr>
            </table>
		  </td>
        </tr>
        <tr>
          <td width="100%" height="22" class="forumrow" align=center>
              <input type="hidden" value="add" name="act"> 

              <input type="submit" style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" value=" 确 定 " name="cmdok">&nbsp; 

              <input type="reset" style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" value=" 取 消 " name="cmdcancel"></td>
        </tr>
       </form>
      </table>
</body></html>
<html></html>
