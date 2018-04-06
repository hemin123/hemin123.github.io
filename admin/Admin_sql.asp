<!--#include file="const.asp"-->
<%CheckAdmin3%>
<%pagename="admin_sql"%>
<!--#include file="Top.Asp"-->  
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="admin.css" type=text/css rel=stylesheet>  
  <BODY>   
  <table class="tableBorder"   align="center">   
  <form   method="post"   name=myform>   
  <tr><td>选择操作：<INPUT   TYPE="radio"   NAME="act"   id="act_backup"     value="backup">备份数据库<INPUT   TYPE="radio"   NAME="act"   id="act_restore"   value="restore">恢复数据库</td></tr>　   
  <tr><td>数据库名：<INPUT   TYPE="text"   NAME="databasename"   value="<%=strSQLDBName%>" size="40">(备份或恢复的SQL数据库名,如music)</td></tr>   
  <tr><td>文件路径：<INPUT   TYPE="text"   NAME="BackUpPathFile"   value="<%=request.ServerVariables("APPL_PHYSICAL_PATH")%>databak\<%=year(date()) & month(date()) & day(date())%>.bak" size="40">(备份或恢复的文件路径,如D:\SQL\music.bak)</td></tr>   
  <tr><td><input   type="submit"   value="确定"></td></tr>   
  </form>   
  </table>   
  <%   
  'SQL   Server   数据库的备份与恢复!   
  dim   sqlname,sqlLoginTimeout,BackUpPathFile,act
  sqlserver   =   "(local)"   'sql服务器   
  sqlname   =   "skymusicv5"        '用户名   
  sqlpassword   =   "skymusicv5"     '密码   
  sqlLoginTimeout   =   15   '登陆超时   
        databasename   =   trim(request("databasename"))   
        BackUpPathFile   =   trim(request("BackUpPathFile"))   
        BackUpPathFile   =   replace(BackUpPathFile,"$1",databasename)   
  act   =   lcase(request("act"))   
    
  if   databasename   =   ""   then   
    response.write   "请填写数据库名和文件路径"   
  else   
    if   act   =   "backup"   then   
    Set   srv=Server.CreateObject("SQLDMO.SQLServer")   
  srv.LoginTimeout   =   sqlLoginTimeout   
  srv.Connect   sqlserver,sqlname,   sqlpassword   
  Set   bak   =   Server.CreateObject("SQLDMO.Backup")   
  bak.Database =databasename   
  bak.Devices =Files   
  bak.Files =BackUpPathFile   
  bak.SQLBackup   srv   
      if   err.number>0   then   
  response.write   err.number&"<font   color=red><br/>"   
  response.write   err.description&"</font>"   
      end   if   
        
  Response.write   "<font   color=green>备份成功!</font>"   
    elseif   act   =   "restore"   then   
  '恢复时要在没有使用数据库时进行！   
      Set   srv=Server.CreateObject("SQLDMO.SQLServer")   
  srv.LoginTimeout   =   sqlLoginTimeout   
  srv.Connect   sqlserver,sqlname,   sqlpassword   
    
      Set   rest=Server.CreateObject("SQLDMO.Restore")   
  rest.Action=0   '   full   db   restore   
  rest.Database=databasename   
  rest.Devices=Files   
  rest.Files=BackUpPathFile   
  rest.ReplaceDatabase=True   'Force   restore   over   existing   database   
      if   err.number>0   then   
  response.write   err.number&"<font   color=red><br/>"   
  response.write   err.description&"</font>"   
      end   if   
      rest.SQLRestore   srv   
        
      Response.write   "<font   color=green>恢复成功!</font>"   
    else   
      Response.write   "<font   color=red>没有选择操作</font>"   
    end   if   
  end   if   
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
  %>   
  </BODY>   
  </HTML>
