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
<%
Function GetUrl() 
Dim strHostName,strScriptName,strSubUrl,strRequestItem 
strHostName=CStr(Request.ServerVariables("LOCAL_ADDR"))
strScriptName=CStr(Request.ServerVariables("SCRIPT_NAME"))
strSubUrl=""
If Request.QueryString<>"" Then
   strScriptName=strScriptName&"?"
   For Each strRequestItem In Request.QueryString
    If InStr(strScriptName,strRequestItem)=0 Then
     If strSubUrl="" Then
      strSubUrl=strSubUrl&strRequestItem&"="&Server.URLEncode(Request.QueryString(""&strRequestItem&""))
     Else
      strSubUrl=strSubUrl&"&"&strRequestItem&"="&Server.URLEncode(Request.QueryString(""&strRequestItem&""))
     End If
    End If
   Next
End If
GetUrl="http://"&strHostName&strScriptName&strSubUrl
End Function
%>
<%=GetUrl()%>

<% 
response.write "http://"&Request.ServerVariables("server_name")&Request.ServerVariables("script_name") 
%>