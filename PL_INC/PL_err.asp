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
'%>
<!--#include file="../PL_config.asp"-->
<%content=Trim(Request("content"))%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>错误信息提示 - <%=webname%></TITLE>
<LINK href="../pinluo.com_style1/music07css.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>
BODY {
	BACKGROUND-COLOR: #e8efd6
}
.STYLE5 {
	FONT-SIZE: 16px
}
.STYLE6 {
	FONT-SIZE: 14px
}
.STYLE8 {FONT-SIZE: 12px; font-weight: normal; }
</STYLE>

<META content="MSHTML 6.00.6000.16587" name=GENERATOR></HEAD>
<BODY>
<DIV align=center>
<P><BR></P>
<table class="tableBorder" cellSpacing=0 cellPadding=0 width=378 border=0>
  <TBODY>
  <TR>
    <TD>
      <DIV id=song>
      <table class="tableBorder" cellSpacing=1 cellPadding=0 width=378 bgColor=#66aa02 border=0>
        <TBODY>
        <TR>
          <TD vAlign=top width=376 bgColor=#ffffff>
            <table class="tableBorder" cellSpacing=0 cellPadding=0 width=376 border=0>
              <TBODY>
              <TR>
                <TD align=middle 
                background=../pinluo.com_style1/playqie_06.gif height=28>
                  <table class="tableBorder" cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD>&nbsp;&nbsp;<SPAN 
                        class=gnavt14line><%=webname%></SPAN></TD>
                      </TR></TBODY></TABLE></TD></TR>
              <TR>
                <TD>
                  <table class="tableBorder" cellSpacing=0 cellPadding=0 width=376 border=0>
                    <TBODY>
                    <TR>
                      <TD vAlign=top align=left width=6 bgColor=#f0f9ce 
                      rowSpan=2><IMG height=131 
                        src="../pinluo.com_style1/playqie_08.gif" width=6></TD>
                      <TD vAlign=top bgColor=#f0f9ce>
                        <table class="tableBorder" cellSpacing=3 cellPadding=0 width="100%" 
                        bgColor=#66aa02 border=0>
                          <TBODY>
                          <TR>
                            <TD vAlign=top bgColor=#ffffff height=160>
                              <table class="tableBorder" cellSpacing=2 cellPadding=0 width="100%">
                                <TBODY>
                                <TR>
                                <TD class="sg12b STYLE5" align=middle 
                                background=../pinluo.com_style1/music07zjqie_17.gif 
                                bgColor=#ccff33 height=30>错误信息：</TD></TR>
                                <TR>
                                <TD vAlign=top align=left bgColor=#ffffff 
                                height=109>
                                <BLOCKQUOTE><BR><SPAN 
                                class="black12 STYLE6">产生错误的可能原因：</SPAN><BR><BR>
                                <span class="STYLE8">
								<%=content%>
                                  <!--<LI>您输入的用户名并不存在，<A 
                                href="../Reg.asp">请先注册</A>
                                   <LI>或者管理员已经将用户账号锁定，请和管理员联系。</LI>--></span>
                                  <BR><BR>
                                </BLOCKQUOTE></TD></TR>
                                <TR>
                                <TD class=black12 align=middle 
                                bgColor=#ccff33><A class=STYLE6 
                                href="javascript:history.go(-1)">返回</A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
                      <TD vAlign=top align=right width=6 bgColor=#f0f9ce 
                      height=173 rowSpan=2><IMG height=131 
                        src="../pinluo.com_style1/playqie_10.gif" 
                    width=6></TD></TR>
                    <TR>
                      <TD vAlign=top bgColor=#f0f9ce 
                  height=10></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE></DIV></BODY></HTML>
