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
'
function Checkin(s) 
s=trim(s) 
s=replace(s," ","&amp;nbsp;") 
s=replace(s,"'","&amp;#39;") 
s=replace(s,"""","&amp;quot;") 
s=replace(s,"&lt;","&amp;lt;") 
s=replace(s,"&gt;","&amp;gt;") 
Checkin=s 
end function 

function CheckAdmin1
	if Session("IsAdmin")<>true then response.redirect "error.asp"
end function

function CheckAdmin2
	if Session("IsAdmin")<>true or (session("KEY")<>"check" and session("KEY")<>"super") then response.redirect "error.asp"
end function

function CheckAdmin3
	if Session("IsAdmin")<>true or session("KEY")<>"super" then response.redirect "error.asp"
end function

sub error()
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name=author content=<%=webname%> - <%=weburl%>>
<title><%=webname%> - <%=weburl%></title>
<LINK href="admin.css" type=text/css rel=stylesheet>
</head>
<body topmargin="111" leftmargin="0"><br>
<br>
<br>
<br>
<p>&nbsp;</p>
<div align="center">
  <center>
  <table class="tableBorder" border="0" cellspacing="0" width="60%">
    <tr>
      <td width="100%" bgcolor="GREEN">
        <div align="center">
          <table class="tableBorder" border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
              <td width="100%" height="80" align="center" background="images/manage/admin_bg.gif" bgcolor="#FFFFFF">
                <b>Error��&nbsp; <%=errmsg%>��&nbsp; :(</b>
                <p><b><a href="javascript:history.go(-1)">...::: �� �� �� �� 
                :::...</a></b>              </td>
            </tr>
          </table>
        </div>
      </td>
    </tr>
  </table>
  </center>
</div>
</body>                    
</html>           
<%
end sub
%>
