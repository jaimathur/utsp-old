<%@ page language = "java" import = "java.io.*, java.util.Date, java.util.*, java.awt.*, javax.imageio.*, java.awt.image.*, java.sql.*;" %>

<html>
<%
//Date dt=new Date();
//String timeStamp=null;
//timeStamp=""+(dt.getYear()+1900)+"-"+(dt.getMonth()+1)+"-"+dt.getDate()+" "+dt.getHours()+":"+dt.getMinutes()+":"+dt.getSeconds();
String msg="";
String q[]=new String[10];
String a1[]=new String[10];
String a2[]=new String[10];
String a3[]=new String[10];
String a4[]=new String[10];
String ans[]=new String[10];
/*
String q[]=null;
String a1[]=null;
String a2[]=null;
String a3[]=null;
String a4[]=null;
String ans[]=null;
*/
String uname="";
//if(session.getAttribute("username")!=null)


int arr[];
int qlen=0;	
/*--------------------------------------------------------------------------------------------------------------*/		
	
	try {
		String connectionURL = "jdbc:mysql://localhost:3306/krishna"; 
		Connection connection = null; 
			Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		connection = DriverManager.getConnection(connectionURL, "root", "kktiwari");
			if(!connection.isClosed())
			{}//out.println("Successfully connected to " + "MySQL server using TCP/IP...");

		Statement stmt=null;
		stmt=connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
		
		//RecordSet rs=null;
		
		ResultSet rs=stmt.executeQuery("select count(*) from quiz");
		rs.first();
		qlen=rs.getInt(1);
		rs.close();
		
		arr=new int[10];
		Random rnd=new Random();
		for(int i=0;i<10;i++)
		{
			arr[i]=rnd.nextInt(qlen-1);
			for(int j=0;j<i;j++)
			{
				if(arr[i]==arr[j])
				{
					i--;
					break;
				}
			}
		}
		
		rs=stmt.executeQuery("select * from quiz");
		
		for(int i=0;i<10;i++)
		{
			rs.absolute(arr[i]+1);
			q[i]=rs.getString("q");
			a1[i]=rs.getString("a1");
			a2[i]=rs.getString("a2");
			a3[i]=rs.getString("a3");
			a4[i]=rs.getString("a4");
			ans[i]=rs.getString(rs.getString("a"));
			
			
		}
		
		
			uname=session.getAttribute("username")+"";

		
	}
	catch(Exception ex)
	{
		//out.println(ex.toString());
	}

%>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">

<title>Interpretation Of Image Viewer Outputs</title>
<style>
<!--
 table.MsoNormalTable
	{mso-style-parent:"";
	font-size:10.0pt;
	font-family:"Times New Roman"}
-->
</style>


<script type="text/javascript">
<!--

var Sound = new Object();
Sound.play = function Sound_play(src) {
if (!src) return false;
this.stop();
var elm;
if (typeof document.all != "undefined") {
elm = document.createElement("bgsound");
elm.src = src;
}
else {
elm = document.createElement("object");
elm.setAttribute("data",src);
elm.setAttribute("type","audio/x-wav");
elm.setAttribute("controller","true");
}
document.body.appendChild(elm);
this.elm = elm;
return true;
};

Sound.stop = function Sound_stop() {
if (this.elm) {
this.elm.parentNode.removeChild(this.elm);
this.elm = null;
}
};

//-->
</script>

</head>

<body topmargin="0" leftmargin="0">
<script language="javascript">
var count=0;
var score=0;
</script>
<%for(int i=0;i<10;i++)
{%>

<input type="hidden" id="q<%=i%>" value="<%=q[i]%>">
<input type="hidden" id="a1<%=i%>" value="<%=a1[i]%>">
<input type="hidden" id="a2<%=i%>" value="<%=a2[i]%>">
<input type="hidden" id="a3<%=i%>" value="<%=a3[i]%>">
<input type="hidden" id="a4<%=i%>" value="<%=a4[i]%>">
<input type="hidden" id="ans<%=i%>" value="<%=ans[i]%>">

<%}%>
<table id="table2" border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" cellpadding="0" bgcolor="#FFFFFF">
  <tr>
    <td width="15" height="15" align="right" valign="top">
    <img border="0" src="images/cornertl.jpg" width="100%" height="100%"></td>
    <td height="15">
    <img border="0" src="images/sidet.jpg" width="100%" height="100%"></td>
    <td width="15" height="15">
    <img border="0" src="images/cornertr.jpg" width="100%" height="100%"></td>
  </tr>
  <tr>
    <td width="15">
    <img border="0" src="images/sidel.jpg" width="100%" height="100%"></td>
    <td valign="top">
    
    
     <form name="form1" method="POST" action="--WEBBOT-SELF--">
     
    <!--webbot bot="SaveResults" u-file="fpweb:///_private/form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><table id="t1" border="0" cellspacing="0" width="100%" height="181">
  <tr>
    <td width="100%" valign="top" align="justify" height="179">
    	<p align="justify"><font size="6"><b>Quiz</b></font></p>
    	<p align="justify">&nbsp;</p>
        <table border="1" cellspacing="1" style="border-collapse: collapse; border-width: 0" bordercolor="#111111" width="100%">
          <tr>
            <td width="100%" colspan="2" style="border-style: none; border-width: medium">
            <label for="fp5" id="l1"></label><input type="hidden" name="T2" size="1" id="fp5"></td>
          </tr>
          <tr>
            <td width="44%" style="border-style: none; border-width: medium">
            &nbsp;</td>
            <td width="56%" style="border-style: none; border-width: medium">
            &nbsp;</td>
          </tr>
          <tr>
            <td width="44%" style="border-style: none; border-width: medium">
            <input type="radio" onclick="verify('1');" value="V1" name="R1" id="fp1" checked><label for="fp1" id="l2"></label></td>
            <td width="56%" style="border-style: none; border-width: medium">
            <input type="radio" onclick="verify('3');" name="R1" value="V3" id="fp3"><label for="fp3" id="l4"></label></td>
          </tr>
          <tr>
            <td width="44%" style="border-style: none; border-width: medium">
            <input type="radio" onclick="verify('2');" name="R1" value="V2" id="fp2"><label for="fp2" id="l3"></label></td>
            <td width="56%" style="border-style: none; border-width: medium">
            <input type="radio" onclick="verify('4');" name="R1" value="V4" id="fp4"><label for="fp4" id="l5"></label></td>
          </tr>
        </table>
       <%if(uname.equals("krishna")){%>            &nbsp;<input type="button" value="Add Questions" name="B2" onclick="verify2()" style="height: 28px; width: 100px; color: #FFFFFF; border-style: solid; border-width: 0; background-image: url('images/blackbutton.jpg')">
<%}%>
<p align="justify">&nbsp;</p>
    </td>
  </tr>
</table>
   </form>
</td>
    <td width="15">
    <img border="0" src="images/sider.jpg" width="100%" height="100%"></td>
  </tr>
  <tr>
   <td width="15" height="15">
    <img border="0" src="images/cornerbl.jpg" width="100%" height="100%"></td>
    <td height="15">
    <img border="0" src="images/sideb.jpg" width="100%" height="100%"></td>
    <td width="15" height="15">
    <img border="0" src="images/cornerbr.jpg" width="100%" height="100%"></td>
  </tr>
</table>

<script language="javascript">
{
var h=document.getElementById("t1").offsetHeight;
h=h+60;
document.getElementById("table2").style.height=""+h+"px";









count=0;
this.document.getElementById("l1").innerHTML="Q"+(count+1)+". "+ document.getElementById("q"+count).value;


this.document.getElementById("l2").innerHTML="" + document.getElementById("a1"+count).value;
this.document.getElementById("l3").innerHTML="" + document.getElementById("a2"+count).value;
this.document.getElementById("l4").innerHTML="" + document.getElementById("a3"+count).value;
this.document.getElementById("l5").innerHTML="" + document.getElementById("a4"+count).value;
document.getElementById("fp1").value=""+document.getElementById("a1"+count).value;
document.getElementById("fp2").value=""+document.getElementById("a2"+count).value;
document.getElementById("fp3").value=""+document.getElementById("a3"+count).value;
document.getElementById("fp4").value=""+document.getElementById("a4"+count).value;
//alert(document.getElementById("fp4").value+"kk");
setCheckedValue(document.forms['form1'].elements['R1'],'');
alert(document.getElementByName("R1").checked+"");
//=false;




var h=document.getElementById("t1").offsetHeight;
h=h+60;
document.getElementById("table2").style.height=""+h+"px";
}


function setCheckedValue(radioObj, newValue) {
	if(!radioObj)
		return;
	var radioLength = radioObj.length;
	if(radioLength == undefined) {
		radioObj.checked = (radioObj.value == newValue.toString());
		return;
	}
	for(var i = 0; i < radioLength; i++) {
		radioObj[i].checked = false;
		if(radioObj[i].value == newValue.toString()) {
			radioObj[i].checked = true;
		}
	}
}

function verify(no)
{
if(no=='1')
{
//alert("1"+document.getElementById("ans"+count).value+" "+document.getElementById("fp1").value);
	if(document.getElementById("ans"+count).value==document.getElementById("fp1").value)
	{
	Sound.play('applaus.wav');

		
		score=score+1;
		alert("correct answer");
		Sound.stop();
	}
	else
	{
	Sound.play('buzz.wav');
		alert("wrong answer");
		Sound.stop();
	}
}
else if(no=='2')
{
//alert("2"+document.getElementById("ans"+count).value+" "+document.getElementById("fp1").value);

	if(document.getElementById("ans"+count).value==document.getElementById("fp2").value)
	{
	Sound.play('applaus.wav');

		
		score=score+1;
		alert("correct answer");
		Sound.stop();
	}
	else
	{
		Sound.play('buzz.wav');

		alert("wrong answer");
		Sound.stop();
	}

}
else if(no=='3')
{
	if(document.getElementById("ans"+count).value==document.getElementById("fp3").value)
	{
	Sound.play('applaus.wav');
	alert("correct answer");
	Sound.stop();
		
		score=score+1;
		
	}
	else
	{
	Sound.play('buzz.wav');
		alert("wrong answer");
		Sound.stop();
	}

}
else if(no=='4')
{
	if(document.getElementById("ans"+count).value==document.getElementById("fp4").value)
	{
		Sound.play('applaus.wav');

		alert("correct answer");
		Sound.stop();
		score=score+1;
	}
	else
	{
	Sound.play('buzz.wav');
		alert("wrong answer");
		Sound.stop();
	}

}
count=count+1;
if(count==10)
{
	alert("Quiz over. Your Score is "+score);
}
else
{
this.document.getElementById("l1").innerHTML="Q"+(count+1)+". "+ document.getElementById("q"+count).value;
this.document.getElementById("l2").innerHTML="" + document.getElementById("a1"+count).value;
this.document.getElementById("l3").innerHTML="" + document.getElementById("a2"+count).value;
this.document.getElementById("l4").innerHTML="" + document.getElementById("a3"+count).value;
this.document.getElementById("l5").innerHTML="" + document.getElementById("a4"+count).value;
document.getElementById("fp1").value=""+document.getElementById("a1"+count).value;
document.getElementById("fp2").value=""+document.getElementById("a2"+count).value;
document.getElementById("fp3").value=""+document.getElementById("a3"+count).value;
document.getElementById("fp4").value=""+document.getElementById("a4"+count).value;
setCheckedValue(document.forms['form1'].elements['R1'],'');

}

}

function verify2()
{
document.form1.action="addquiz.jsp";
document.form1.submit();
}
        </script>



</body>

</html>