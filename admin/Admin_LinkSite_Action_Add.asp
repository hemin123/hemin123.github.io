<!--#include file="Const.Asp"-->
<%CheckAdmin3%>
<%PageName="Admin_LinkSite_Action_Add"%>
<!--#include file="Top.Asp"-->
<LINK href="admin.css" type=text/css rel=stylesheet>
<table class="tableBorder" border="0" width="100%" cellspacing="1" cellpadding="1">
  <tr>
    <td align=center valign=top>
     <table class="tableBorder" width="100%" border="0" align="center" cellpadding="2" cellspacing="1" height="100%">
      <form method="POST" action="Admin_LinkSite_Err.asp?id=<%=id%>">
          <tr class="title">
            <td height="22" colspan="3" align="center"><strong>�� �� �� �� վ ��</strong></td>
          </tr>
          <tr>
            <td width="15%" class="forumrow" align="right">վ����</td>
            <td class="forumrow" width="85%"><input type="text" name="SiteName" size="20"></td>
          </tr>
          <tr>
            <td class="forumrow" align="right">��ַ��</td>
            <td class="forumrow"><input type="text" name="SiteUrl" size="20"></td>
          </tr>
          <tr>
            <td class="forumrow" align="right">Logo��ַ��</td>
            <td class="forumrow"><input type="text" name="LogoUrl" size="20">  ע�⣺Ϊ������ٶȣ�logoһ�ɷ���images/logoĿ¼�£�����ֻҪд�ļ�����</td>
          </tr>
          <tr>
            <td class="forumrow" align="right">վ����</td>
            <td class="forumrow"><input type="text" name="SiteAdmin" size="20"></td>
          </tr>
          <tr>
            <td class="forumrow" align="right">��飺</td>
            <td class="forumrow"><TEXTAREA  name="SiteIntro" rows=5 cols="75"></TEXTAREA></td>
          </tr>
          <tr>
            <td class="forumrow" colspan=2 align=center>
              <input style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF"  type="hidden" value="add" name="act">
              <input  style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" type="submit" value=" �� �� " name="cmdok">&nbsp; 
              <input  style="color: #FFFFFF; background-color: #666699; border: 1px solid #FFFFFF" type="reset" value=" ȡ �� "  name="cmdcancel">
            </td>
          </tr>
        </form>
      </table>
    </td>
  </tr>
</table>
<br>
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
set rs=nothing
conn.close
set conn=nothing%>
</body>
</html>
