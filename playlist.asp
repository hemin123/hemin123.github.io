<%@ LANGUAGE = VBScript.Encode %>
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
<!--#include file="PL_config.asp"-->
<!--#include file="PL_Function.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><title>播放列表 - 品络音乐系统</title>
<SCRIPT type=text/javascript>
function show(div)
{
   document.getElementById("show1").style.display="none"
   document.getElementById("show2").style.display="none"
   document.getElementById("show3").style.display="none"
   div.style.display=""
  
}

</SCRIPT>

<SCRIPT language=JavaScript src="play_img/Js.js" 
type=text/javascript></SCRIPT>

<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="play_img/music07css.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.6000.16587" name=GENERATOR></HEAD>
<BODY>
<table class="tableBorder" height=374 cellSpacing=1 cellPadding=0 width=212 bgColor=#66aa02 
border=0>
  <TBODY>
  <TR>
    <TD background=play_img/playqie_03.gif bgColor=#ffffff height=29>
      <table class="tableBorder" cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width="25%">&nbsp;</TD>
          <TD class=gnavt14line align=left width="75%"><A class=gnavt14line 
            href="javascript:show(show1)">新歌排行</A></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD id=show1 vAlign=top align=middle bgColor=#ffffff>
      <table class="tableBorder" cellSpacing=0 cellPadding=0 width=210 border=0>
        <FORM name=song1 onSubmit="javascript:return lbsong2(this);" 
        action="play.asp" target=Listen>
        <TBODY>
        <TR>
          <TD vAlign=top align=middle>
            <table class="tableBorder" cellSpacing=1 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD class=black12 align=middle bgColor=#e8efd6 colSpan=2 
                height=27>排行</TD>
                <TD class=black12 align=middle bgColor=#e8efd6 colSpan=2 
                height=27>歌曲-歌手</TD></TR>
              <%call PL_Showplaysonglist("new",10)%>
			  </TBODY></TABLE></TD></TR>
        <TR>
          <TD align=middle bgColor=#e8efd6 colSpan=5 height=28><A 
            href="javascript:CheckAll(song1)"><IMG class=hand title=选择显示的所有歌曲 
            height=20 alt=选择显示的所有歌曲 src="play_img/music07zjqie_95.gif" 
            width=42 border=0 name=chkall value="全 选"></A>&nbsp;&nbsp;<A 
            href="javascript:CheckOthers(song1)"><IMG id=chkOthers height=20 
            alt=反向选择歌曲 src="play_img/music07zjqie_97.gif" width=42 
            border=0 name=chkOthers></A>&nbsp;&nbsp;<INPUT id=B1 type=image 
            height=20 alt=请先选择你想听的歌曲后再点击连播 width=42 
            src="play_img/music07zjqie_99.gif" 
        name=B1></TD></TR></FORM></TBODY></TABLE></TD></TR>
  <TR>
    <TD background=play_img/playqie_03.gif bgColor=#ffffff height=29>
      <table class="tableBorder" cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width="25%">&nbsp;</TD>
          <TD class=gnavt14line align=left width="75%"><A class=gnavt14line 
            href="javascript:show(show2)">热歌排行</A></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD id=show2 style="DISPLAY: none" vAlign=top align=middle 
      bgColor=#ffffff><table class="tableBorder" cellSpacing=0 cellPadding=0 width=210 border=0>
        <FORM name=song2 onSubmit="javascript:return lbsong2(this);" 
        action="play.asp" target=Listen>
        <TBODY>
        <TR>
          <TD vAlign=top align=middle>
            <table class="tableBorder" cellSpacing=1 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD class=black12 align=middle bgColor=#e8efd6 colSpan=2 
                height=27>排行</TD>
                <TD class=black12 align=middle bgColor=#e8efd6 colSpan=2 
                height=27>歌曲-歌手</TD></TR>
              <%call PL_Showplaysonglist("hot",10)%>
			  </TBODY></TABLE></TD></TR>
        <TR>
          <TD align=middle bgColor=#e8efd6 colSpan=5 height=28><A 
            href="javascript:CheckAll(song2)"><IMG class=hand title=选择显示的所有歌曲 
            height=20 alt=选择显示的所有歌曲 src="play_img/music07zjqie_95.gif" 
            width=42 border=0 name=chkall value="全 选"></A>&nbsp;&nbsp;<A 
            href="javascript:CheckOthers(song2)"><IMG id=chkOthers height=20 
            alt=反向选择歌曲 src="play_img/music07zjqie_97.gif" width=42 
            border=0 name=chkOthers></A>&nbsp;&nbsp;<INPUT id=B1 type=image 
            height=20 alt=请先选择你想听的歌曲后再点击连播 width=42 
            src="play_img/music07zjqie_99.gif" 
        name=B1></TD></TR></FORM></TBODY></TABLE></TD></TR>
  <TR>
    <TD background=play_img/playqie_03.gif bgColor=#ffffff height=29>
      <table class="tableBorder" cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width="25%">&nbsp;</TD>
          <TD class=gnavt14line align=left width="75%"><A class=gnavt14line 
            href="javascript:show(show3)">推荐歌曲</A></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD id=show3 style="DISPLAY: none" vAlign=top align=middle 
      bgColor=#ffffff><table class="tableBorder" cellSpacing=0 cellPadding=0 width=210 border=0>
        <FORM name=song3 onSubmit="javascript:return lbsong2(this);" 
        action="play.asp" target=Listen>
        <TBODY>
        <TR>
          <TD vAlign=top align=middle>
            <table class="tableBorder" cellSpacing=1 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD class=black12 align=middle bgColor=#e8efd6 colSpan=2 
                height=27>排行</TD>
                <TD class=black12 align=middle bgColor=#e8efd6 colSpan=2 
                height=27>歌曲-歌手</TD></TR>
              <%call PL_Showplaysonglist("isgood",10)%>
			  </TBODY></TABLE></TD></TR>
        <TR>
          <TD align=middle bgColor=#e8efd6 colSpan=5 height=28><A 
            href="javascript:CheckAll(song3)"><IMG class=hand title=选择显示的所有歌曲 
            height=20 alt=选择显示的所有歌曲 src="play_img/music07zjqie_95.gif" 
            width=42 border=0 name=chkall value="全 选"></A>&nbsp;&nbsp;<A 
            href="javascript:CheckOthers(song3)"><IMG id=chkOthers height=20 
            alt=反向选择歌曲 src="play_img/music07zjqie_97.gif" width=42 
            border=0 name=chkOthers></A>&nbsp;&nbsp;<INPUT id=B1 type=image 
            height=20 alt=请先选择你想听的歌曲后再点击连播 width=42 
            src="play_img/music07zjqie_99.gif" 
        name=B1></TD></TR></FORM></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
