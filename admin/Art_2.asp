<!--#include file="Const.Asp"-->
<%CheckAdmin3%>
<%PageName="Art_2"%>
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
act=request("act")
ClassID=request.form("Classid")
founderr=false

if act="rename" then
	FunRename
elseif act="del" then
	FunDel
elseif act="add" then
	FunAdd
else
	errmsg=errmsg+"<br>"+"<li>������������ϵ����Ա"
	founderr=true
end if

if founderr=true then
	call error()
else

end if

function FunRename
	SClassid=request.QueryString("SClassid")
	SClass=trim(request.form("Sclass"))
	if SClass="" then
		errmsg=errmsg+"<br>"+"<li>��Ŀ���Ʋ���Ϊ�գ�"
		call error()
		Response.End 
	end if
	set rs=server.createobject("adodb.recordset")
	sql = "SELECT * FROM Sclass where Sclassid=" & SClassid
	rs.Open sql,conn, 1, 3
	if err.Number<>0 then
		err.clear
		errmsg=errmsg+"<br>"+"<li>������������ϵ����Ա"
		founderr=true
	else
		rs("Sclass") = Sclass
		rs.Update
	end if
	rs.Close

	set rs=nothing
	conn.close
	set conn=nothing
end function

function FunDel
	SClassid=request("SClassid")
	sql="delete from Sclass where Sclassid=" & SClassid
	conn.execute sql
	Rem 'ɾ��������Ŀ
	sql="delete from Nclass where Sclassid=" & SClassid
	conn.execute sql
	Rem 'ɾ�������Ʒ
	sql="delete from special where Sclassid=" & SClassid
	conn.execute sql
	if err.Number<>0 then
		err.clear
		errmsg=errmsg+"<br>"+"<li>������������ϵ����Ա"
		founderr=true
	end if
end function
	
function FunAdd
	SClass=trim(request.form("SClass"))
	Classid=request.QueryString("Classid")
	if SClass="" then
		errmsg=errmsg+"<br>"+"<li>��Ŀ���Ʋ���Ϊ�գ�"
		call error()
		Response.End 
	end if
	set rs=server.createobject("adodb.recordset")
	sql = "SELECT * FROM Sclass where (Sclassid IS NULL)"
	rs.Open sql,conn, 1, 3
	if err.Number<>0 then
		err.clear
		errmsg=errmsg+"<br>"+"<li>������������ϵ����Ա"
		founderr=true
	else
		rs.AddNew
		rs("Sclass") = SClass
		rs("Classid") = Classid
		rs.Update
	end if
	rs.Close
	set rs=nothing
	conn.close
	set conn=nothing
end function
Response.Redirect "Art_3.asp?id="&classid&""
%>
