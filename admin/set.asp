<!--#include file="../user/Conn.Asp"-->
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
set rs=server.createobject("adodb.recordset")
sql="select * from const" 
rs.open sql,conn,1,1
if not rs.eof then
	Application("WebName")=rs("WebName")			'网站名称
	Application("WebUrl")=rs("WebUrl")			'网站地址
	Application("Copyright")=rs("Copyright")		'版权信息
	Application("Ver")=rs("Ver")				'版本信息
	Application("AdminEmail")=rs("AdminEmail")		'站长信箱
        APPlication("SMS")=rs("SMS")				'彩秀ID
        APPlication("WebPost1")=rs("WebPost1")		        '首页公告
        APPlication("WebPost2")=rs("WebPost2")		        '
        APPlication("WebPost3")=rs("WebPost3")		        '
        APPlication("WebPost4")=rs("WebPost4")		        '
        APPlication("Front")=rs("Front")		        '路径前缀
        APPlication("Keywords")=rs("Keywords")		        '关键字
        APPlication("count")=rs("count")		        '统计代码
        APPlication("beian")=rs("beian")		        '备案信息
        APPlication("bottominfo")=rs("bottominfo")		'统计代码

end if
rs.close
set rs=nothing
	WebName=Application("WebName")			        '网站名称
	WebUrl=Application("WebUrl")			        '网站地址
	Copyright=Application("Copyright")		        '版权信息
	Ver=Application("Ver")				        '版本信息
	AdminEmail=Application("AdminEmail")		        '站长信箱
        SMS=Application("SMS")					'彩秀ID
        WebPost1=Application("WebPost1")			'首页公告
        WebPost2=Application("WebPost2")			'
        WebPost3=Application("WebPost3")			'
        WebPost4=Application("WebPost4")			'
        Front=Application("Front")			        '
        Keywords=Application("Keywords")			'
        count=Application("count")			        '
        beian=Application("beian")			        '
        bottominfo=Application("bottominfo")			'
%>
<%
if Application("MaxShangpinlist")="" then
 Application.Lock
	Application("MaxSpecialList")="15"
 Application.UnLock
end if
	MaxSpecialList=Application("MaxSpecialList")
%>
