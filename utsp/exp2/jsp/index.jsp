<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Virtual Labs</title>
<base target="contents">
<style type="text/css">
html {height:100%;overflow:hidden;}
body {height:100%; margin:0; padding:0;}
</style>
<script language="JavaScript">
var clicked=null;
</script>
</head>

<body topmargin="0" bgcolor="#DEF1FA" leftmargin="0">

  <table border="1" cellspacing="0" style="border-collapse: collapse; position: relative; z-index: 1" bordercolor="#DEF1FA" width="100%" height="49" cellpadding="0">
    <%
    int flag=0;
    String uname="Guest";
    Cookie cookies[]=request.getCookies();
	String exp="Experiments";
    if(cookies!=null)
		{
			for(int i=0;i<cookies.length;i++)
			{
				if(cookies[i].getName().equals("username"))
				{
					flag=1;
					uname=cookies[i].getValue();
					//break;
				}
				else if(cookies[i].getName().equals("uploadpath"))
				{
					if((cookies[i].getValue()).equals("C:/uploads/common"))
					{
						exp="Admin Tools";
					}
				}
			}
		
%>
    <tr>
    <td colspan="3" height="5" width="916" valign="top" bgcolor="#DEF1FA">
       <p align="right"> Hi, <%=uname%> </p>
      
      </td>
    </tr>
    <%}
    else
    {
    %>
    <tr>
    <td colspan="3" height="5" width="916" valign="top" bgcolor="#DEF1FA">
       <p align="right"> Hi, Guest </p>
      
      </td>
    </tr>

   <% }%>
    <tr>
    <td width="192" height="150" valign="top" bgcolor="#DEF1FA">
    
    <img border="0" src="images/vlablogo.jpg" width="100%" height="98%"></td>
    <td width="561" height="31" valign="top" bordercolor="#DEF1FA" bgcolor="#DEF1FA">
    
    <br><font size="6">Virtual Satellite Image Processing and Analysis Laboratory</font><p>
    <font size="4">Indian Institute of Technology Bombay</font></p>
    <p></p>
    <p>
    </td>
    <td width="100" height="120" bgcolor="#DEF1FA" bordercolor="#DEF1FA">
    <img border="0" src="images/iitblogo.jpg" width="100%" height="100%"></td>
    
      
    </tr>
    <table height="30" width="100%" cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse" bordercolor="#111111">
    <tr>
    <td onclick="top.frames['I1'].location.href='home.html'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;" onmouseover = "this.style.backgroundImage='url(images/menuselect.jpg)';" onmouseout="if(clicked!=this){this.style.backgroundImage='url(images/menu1.jpg)';}" width="51" height="5" style="cursor:pointer; border:1px solid #FFFFFF; " background="images/menu1.jpg" bordercolor="#FFFFFF" >
      <p align="center"><font color="#FFFFFF">
      <a target="I1" href="home.html" style="text-decoration: none">
      <font color="#FFFFFF">Home</font></a></font></td>
      <td onclick="top.frames['I1'].location.href='aimofexperiment.html'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;" onmouseover = "this.style.backgroundImage='url(images/menuselect.jpg)';" onmouseout="if(clicked!=this){this.style.backgroundImage='url(images/menu1.jpg)'};" width="67" height="5" style="cursor:pointer; border:1px solid #FFFFFF; " background="images/menu1.jpg" bordercolor="#FFFFFF">
      <p align="center"><font color="#FFFFFF">
      <a target="I1" href="aimofexperiment.html" style="text-decoration: none"><font color="#FFFFFF">Aim</font></a></font></td>
      <td onclick="top.frames['I1'].location.href='Theoryofexp.htm'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;" onmouseover = "this.style.backgroundImage='url(images/menuselect.jpg)';" onmouseout="if(clicked!=this){this.style.backgroundImage='url(images/menu1.jpg)'};" width="65" height="5" style="cursor:pointer; border:1px solid #FFFFFF; " background="images/menu1.jpg" bordercolor="#FFFFFF">
      <p align="center"><font color="#FFFFFF">
      <a target="I1" href="Theoryofexp.htm" style="text-decoration: none"><font color="#FFFFFF">Theory</font></a></font></td>
      <td onclick="top.frames['I1'].location.href='proc.html'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;" onmouseover = "this.style.backgroundImage='url(images/menuselect.jpg)';" onmouseout="if(clicked!=this){this.style.backgroundImage='url(images/menu1.jpg)'};" width="94" height="5" style="cursor:pointer; border:1px solid #FFFFFF; " background="images/menu1.jpg" bordercolor="#FFFFFF">
      <p align="center"><font color="#FFFFFF">
      <a target="I1" href="proc.html" style="text-decoration: none">
      <font color="#FFFFFF">Procedure</font></a></font></td>
      <td onclick="top.frames['I1'].location.href='session.jsp'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;" onmouseover = "this.style.backgroundImage='url(images/menuselect.jpg)';" onmouseout="if(clicked!=this){this.style.backgroundImage='url(images/menu1.jpg)'};" width="100" height="5" style="cursor:pointer; border:1px solid #FFFFFF; " background="images/menu1.jpg" bordercolor="#FFFFFF">
      <p align="center">
      <a target="I1" href="session.jsp" style="text-decoration: none"><font color="#FFFFFF"><%=exp%></font></a></td>
      <td onclick="top.frames['I1'].location.href='interpret.html'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;" onmouseover = "this.style.backgroundImage='url(images/menuselect.jpg)';" onmouseout="if(clicked!=this){this.style.backgroundImage='url(images/menu1.jpg)'};" width="115" height="5" style="cursor:pointer; border:1px solid #FFFFFF; " background="images/menu1.jpg" bordercolor="#FFFFFF">
      <p align="center"><font color="#FFFFFF">
      <a target="I1" href="interpret.html" style="text-decoration: none"><font color="#FFFFFF">Interpretations
      </font></a> </font> </td>
      <td onclick="top.frames['I1'].location.href='quiz.jsp'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;" onmouseover = "this.style.backgroundImage='url(images/menuselect.jpg)';" onmouseout="if(clicked!=this){this.style.backgroundImage='url(images/menu1.jpg)'};" width="77" height="5" style="cursor:pointer; border:1px solid #FFFFFF; " background="images/menu1.jpg" bordercolor="#FFFFFF">
      <p align="center"><font color="#FFFFFF">
      <a target="I1" href="quiz.jsp" style="text-decoration: none"><font color="#FFFFFF">Quiz</font></a></font></td>
      
      <td onclick="top.frames['I1'].location.href='faqs.html'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;" onmouseover = "this.style.backgroundImage='url(images/menuselect.jpg)';" onmouseout="if(clicked!=this){this.style.backgroundImage='url(images/menu1.jpg)'};" width="80" height="5" style="cursor:pointer; border:1px solid #FFFFFF; " background="images/menu1.jpg" bordercolor="#FFFFFF">
      <p align="center"><font color="#FFFFFF">
      <a target="I1" href="faqs.html" style="text-decoration: none"><font color="#FFFFFF">FAQs</font></a></font></td>
      <td onclick="top.frames['I1'].location.href='reference.html'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;" onmouseover = "this.style.backgroundImage='url(images/menuselect.jpg)';" onmouseout="if(clicked!=this){this.style.backgroundImage='url(images/menu1.jpg)'};" width="103" height="5" style="cursor:pointer; border:1px solid #FFFFFF; " background="images/menu1.jpg" bordercolor="#FFFFFF">
      <p align="center">
      <a target="I1" href="reference.html" style="text-decoration: none"><font color="#FFFFFF">References</font></a></td>
      <td onclick="top.frames['I1'].location.href='feedbacknew.jsp'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;" onmouseover = "this.style.backgroundImage='url(images/menuselect.jpg)';" onmouseout="if(clicked!=this){this.style.backgroundImage='url(images/menu1.jpg)'};" width="87" height="5" style="cursor:pointer; border:1px solid #FFFFFF; " background="images/menu1.jpg" bordercolor="#FFFFFF">
      <p align="center"><font color="#FFFFFF">
      <a target="I1" href="feedbacknew.jsp" style="text-decoration: none"><font color="#FFFFFF">Feedback</font></a></font></td>
      <td onclick="top.frames['I1'].location.href='aboutus.html'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;" onmouseover = "this.style.backgroundImage='url(images/menuselect.jpg)';" onmouseout="if(clicked!=this){this.style.backgroundImage='url(images/menu1.jpg)'};" width="84" height="5" style="cursor:pointer; border:1px solid #FFFFFF; " background="images/menu1.jpg" bordercolor="#FFFFFF">
      <p align="center"><font color="#FFFFFF">
      <a target="I1" href="aboutus.html" style="text-decoration: none"><font color="#FFFFFF">About Us</font></a></font></td>
      <td <%if(flag==0){%>onclick="top.frames['I1'].location.href='login.jsp'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;" <%}else{%>onclick="top.frames['I1'].location.href='logout.jsp'; this.style.backgroundImage='url(images/menuselect.jpg)'; if(clicked!=null){clicked.style.backgroundImage='url(images/menu1.jpg)'}; clicked=this;"<%}%> onmouseover = "this.style.backgroundImage='url(images/menuselect.jpg)';" onmouseout="if(clicked!=this){this.style.backgroundImage='url(images/menu1.jpg)'};" width="117" height="5" style="cursor:pointer; border:1px solid #FFFFFF; " background="images/menu1.jpg" bordercolor="#FFFFFF">
      <p align="center"><font color="#FFFFFF"><%if(flag==0){%><a target="I1" href="login.jsp" style="text-decoration: none"><font color="#FFFFFF">Sign In<%}else{%></font></a><a target="I1" href="logout.jsp" style="text-decoration: none"><font color="#FFFFFF">Sign Out<%}%></font></a></font></td>
    </tr>
    </table>
    </tr>
   </table>
  </center>
</div>


<script language="JavaScript">
<!--
function adjustFrameSize()
{
  //find the height of the internal page
  var the_height=document.getElementById('I1').contentWindow.document.body.scrollHeight;
//alert(the_height+"");
  //change the height of the iframe
  var pheight=window.innerHeight;
  //alert(pheight+"");
  pheight=pheight-217;
  document.getElementById('I1').height=pheight;
}
//-->
  </script>


<p align="center">
<div align="center">
  <center>
<table border="0" cellspacing="0" style="border-collapse: collapse; position:relative; z-index:1" bordercolor="#111111" width="100%" cellpadding="0">
  <tr>
    <td width="100%" valign="top">
    <p align="center">
    <iframe name="I1" id="I1" scrolling="auto" width="100%" allowtransparency="true" background-color="transparent" src="home.html" marginwidth="1" marginheight="1" align="top" border="0" frameborder="0" onload="adjustFrameSize();">
    Your browser does not support inline frames or is currently configured not to display inline frames.</iframe></td>
  </tr>
</table>
  </center>
</div>
</p>

</body>

</html>