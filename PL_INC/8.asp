<%
'
'��������������������������������������
'��                                                                      ��
'��                     Ʒ�����ֳ���ϵͳ1.0                              ��
'��                                                                      ��
'��     ��Ȩ����: Ʒ��Ƽ�   PinLuo.Com                                  ��
'��                                                                      ��
'��     ��������: Ʒ������Ƽ����޹�˾                                   ��
'��       E-mail: pinluo.com@163.com    pinluo@qq.com                    ��
'��           QQ: 812153636  852672993  290820145  512563020             ��
'��                                                                      ��
'��     �����ַ: [��Ʒ����]http://www.pinluo.com/music_show.asp         ��
'��               [֧����̳]http://bbs.pinluo.com/                       ��
'��                                                                      ��
'��     ������վ: http://www.pinluo.com      �ŶӼ���Ʒ                  ��
'��               http://www.aspxweb.com     ASP.NETѧϰ��               ��
'��               http://www.8555.org        8555��ѵ�Ӱ                ��
'��               http://www.dd88.net        ��Ʒ���                    ��
'��               http://www.vodsea.com      Ӱ�Ӻ���                    ��
'��               http://www.musicfans.cn    ���ְ�����                  ��
'��                                                                      ��
'��                                                                      ��
'��  --  ��Ҫ��ʽ���ڽ�վ��׬�����Ǯ��ϣ����ҹ���ٷ�����ҵ�汾�� --   ��
'��                                                                      ��
'��                                                                      ��
'��������������������������������������
'
'         ��ӭʹ�ñ������벻Ҫɾ������İ�Ȩ��Ϣ��лл����֧�֣�
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