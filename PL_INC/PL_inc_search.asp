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
<SCRIPT type=text/javascript>
<!--
function CheckForm()
{ 
 
  if (document.form1.kw.value=="")
  {
    alert("����д�������ݣ�");
	document.form1.kw.focus();	return false;
  }
 
  return true;  
}
-->
</SCRIPT>
<table class="tableBorder" width="95%" border=0 align="center" cellPadding=0 cellSpacing=0>
        <TBODY>
        <TR>
          <TD vAlign=top align=left width=59 
          background=pinluo.com_style1/music07zjqie_17.gif><IMG height=46 
            src="pinluo.com_style1/music07zjqie_16.gif" width=59></TD>
          <TD width="682" vAlign=top background=pinluo.com_style1/music07zjqie_17.gif>
            <table class="tableBorder" cellSpacing=0 cellPadding=0 width="99%" border=0>
              <TBODY>
              <TR>
                <TD vAlign=top align=left>
                  <FORM id=form1 name=form1 onSubmit="return CheckForm();" 
                  action="PL_search.asp" method="get" target="_blank">
                  <table class="tableBorder" cellSpacing=0 cellPadding=0 width="99%" border=0>
                    <TBODY>
                    <TR>
                      <TD width="9%"><INPUT id=id type=radio CHECKED value=0 
                        name=t> 
                      <SPAN class=g13tit>���� </SPAN></TD>
                      <TD width="9%" height=21><INPUT id=id type=radio value=1 
                        name=t> 
                      <SPAN class=g13tit>����</SPAN> </LABEL></TD>
                      <TD width="9%"><INPUT id=id type=radio value=2 name=t> 
                        <SPAN class=g13tit>ר��</SPAN></TD>
                      <TD width="9%"><INPUT id=id type=radio value=3 name=t> 
                        <SPAN class=g13tit>���</SPAN> </TD>
                      <TD align=middle width="19%" height=21><INPUT 
                        class=finput id=kw name=kw></TD>
                      <TD align=middle width="8%" height=21><A 
                        href="javascript:submit();"><INPUT type=image height=21 
                        width=42 src="pinluo.com_style1/btu_33.gif"></A></TD>
                      <TD class=gray12t width="37%" height=21>��������: <A 
                        class=gray12u 
                        href="PL_search.asp?t=1&amp;kw=����Ӣ" 
                        target=_blank>����Ӣ</A>. <A class=gray12u 
                        href="PL_search.asp?t=0&amp;kw=��" 
                        target=_blank>��</A>. <A class=gray12u 
                        href="PL_search.asp?t=1&amp;kw=��ѧ��" 
                        target=_blank>��ѧ��</A>. <A class=gray12u 
                        href="PL_search.asp?t=0&amp;kw=��" 
                        target=_blank>��</A>. </TD>
                    </TR></TBODY></TABLE></FORM></TD></TR>
              <TR>
                <TD class=sg12b vAlign=bottom align=middle>
				
				<%call PL_ShowABCDlanmu() '��ȡ����ABCD������Ŀ%>
				
				</TD></TR></TBODY></TABLE></TD>
        <TD vAlign=top align=right width=12 
          background=pinluo.com_style1/music07zjqie_17.gif><img height=46 
            src="pinluo.com_style1/music07zjqie_19.gif" 
        width=11></TD>
        </TR></TBODY></TABLE>