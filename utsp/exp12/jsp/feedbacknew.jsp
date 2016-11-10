<%@ page language = "java" import = "java.io.*, java.util.Date, java.awt.*, javax.imageio.*, java.awt.image.*, java.sql.*;" %>

<html>
<%
int submitted=0;
Date dt=new Date();
String timeStamp=null;
timeStamp=""+(dt.getYear()+1900)+"-"+(dt.getMonth()+1)+"-"+dt.getDate()+" "+dt.getHours()+":"+dt.getMinutes()+":"+dt.getSeconds();
String msg="";
String msg1="";
String msg2="";
String q1="";
String q2="";
String q3="";
String q4="";
String q5="";
String q6="";
String q7="";
String q8="";
String q9="";
String q10="";
String q11="";
String q12="";
String q13="";
String expno="";
String q14="";
//----------------------------------------------------for session check----------------------//
String session_user="";

Cookie cookies[]=request.getCookies();
if(cookies!=null)
{
		
	for(int i=0;i<cookies.length;i++)
	{
			//out.println(cookies[i].getName()+"");
		if(cookies[i].getName().equals("username"))
		{
					
			session_user=cookies[i].getValue();
			break;
		}
	}
}
//-------------------------------------------------------------------------------------------//

//String name=session.getAttribute("username")+"";

if((request.getParameter("feed")!=null)&&(request.getParameter("feed")).equals("1"))
{
	msg=request.getParameter("S1");
	q1=request.getParameter("D1");
	q2=request.getParameter("D2");
	q3=request.getParameter("D3");
	q4=request.getParameter("D4");
	q5=request.getParameter("D5");
	q6=request.getParameter("D6");
	q7=request.getParameter("D7");
	//q8=request.getParameter("D8");
	q9=request.getParameter("D9");


	q10=request.getParameter("D10");
	q11=request.getParameter("D11");
	q12=request.getParameter("D12");
	q13=request.getParameter("D13");
	q14=request.getParameter("D14");
	msg1=request.getParameter("S2");
	msg2=request.getParameter("S3");
	expno=request.getParameter("D15");
	
/*--------------------------------------------------------------------------------------------------------------*/		
	try {
		String connectionURL = "jdbc:mysql://localhost:3306/krishna"; 
		Connection connection = null; 
			Class.forName("com.mysql.jdbc.Driver").newInstance(); 
		connection = DriverManager.getConnection(connectionURL, "root", "kktiwari");
			if(!connection.isClosed())
			{}//out.println("Successfully connected to " + "MySQL server using TCP/IP...");

		Statement stmt=null;
		PreparedStatement prepstat;
		stmt=connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
		ResultSet rs=stmt.executeQuery("select * from user where userid='" + session_user + "'");
		if(rs.first())
		{
			rs.close();
			msg.replaceAll("\\n","</br>");
			//msg.replaceAll("\\","\\n");
		//	msg.replaceAll("\'","\\'");
			String quer="insert into feedback values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	

	
		prepstat=connection.prepareStatement(quer);
		
		
			prepstat.setString(1,session_user);
			prepstat.setString(2,timeStamp);
			prepstat.setString(3,msg);
			prepstat.setString(4,q1);
			prepstat.setString(5,q2);
			prepstat.setString(6,q3);
			prepstat.setString(7,"IIT Bombay");
			prepstat.setString(8,q5);
			prepstat.setString(9,q6);
			prepstat.setString(10,q7);
			prepstat.setString(11,q9);
			prepstat.setString(12,q10);
			prepstat.setString(13,q11);
			prepstat.setString(14,q12);
			prepstat.setString(15,q13);
			prepstat.setString(16,q14);
			prepstat.setString(17,msg1);
			prepstat.setString(18,msg2);
			prepstat.setString(19,expno);
			//prepstat.setString(20,"IIT Bombay");
			
			prepstat.executeUpdate();
			//stmt.executeUpdate("insert into feedback values('"+session_user+"','"+timeStamp+"','"+msg+"','"+msg1+"','"+msg2+"','"+q1+"','"+q2+"','"+q3+"','"+q4+"','"+q5+"','"+q6+"','"+q7+"','"+q9+"','"+q10+"','"+q11+"','"+q12+"','"+q13+"','"+q14+"')");
			msg="Thanks for your feedback, your feedback is recorded and will be seen by iit bombay team.";
			submitted=1;
		}	
		else
		{
			//msg="You must be signed in before submitting the feedback!";
			submitted=2;
			
		}
		connection.close();
	}
	catch(Exception ex)
	{
		out.println(ex.toString());
	}
}
%>

<head>
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Feedback</title>
</head>

<body topmargin="0" leftmargin="0">

<table id="table2" border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" cellpadding="0" bgcolor="#FFFFFF">
  <tr>
    <td width="15" height="15">
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
    
    
    
    <table id="t1" border="0" cellspacing="0" width="100%">
 <form name="form1" method="POST" action="--WEBBOT-SELF--">
    <!--webbot bot="SaveResults" u-file="C:\Program Files\Apache Software Foundation\Tomcat 5.5\webapps\siplabs\_private\form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" --><tr>
      <td width="100%" height="19" colspan="2"><font face="Georgia" style="font-size: 2em">Website 
      Feedback</font></td>
    </tr>
    <tr>
      <td width="100%" height="18" colspan="2"></td>
    </tr>
    <%if(submitted==1)
    {%>
    <tr>
      <td width="100%" height="18" colspan="2"><font color="#333333"><%=msg%> 
      </font></td>
    </tr>
    <%}
    else
    {%>
    <tr>
      <td width="100%" height="18" colspan="2">Use the form below to send us your 
      valuable feedback 
      on our virtual lab. We value your feedback and welcome your comments on how we 
      might improve our website<font color="#333333">.</font></td>
    </tr>
    <tr>
      <td width="100%" height="20" colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td width="63%" height="20">
      Experiment Number</td>
      <td width="37%" height="20">
     
        <select size="1" name="D15">
        <option selected>1</option>
		<option>2</option>
		<option>3</option>
		<option>4</option>
		<option>5</option>
		<option>6</option>
		<option>7</option>
		<option>8</option>
		<option>9</option>
		<option>10</option>
		<option>11</option>
		<option>12</option>
		<option>13</option>
		<option>14</option>
		<option>15</option>
		<option>16</option>
		<option>17</option>
        </select></td>
    </tr>
    <tr>
      <td width="63%" height="20">
      <p style="margin-top: 6; margin-bottom: 6">
		<span style="font-size: 12.0pt; font-family: Times New Roman">To what 
		degree was the actual lab environment simulated</span></td>
      <td width="37%" height="20">
     
        <select size="1" name="D1">
        <option>Poor</option>
        <option>Average</option>

        <option selected>Good</option>
        <option>Very good</option>
        <option>Excellent</option>
        </select>
      
      </td>
    </tr>
    <tr>
      <td width="63%" height="20">
      <p style="margin-top: 6; margin-bottom: 6">
		<span style="font-size: 12.0pt; font-family: Times New Roman">The 
		manuals were found to be helpful</span></td>
      <td width="37%" height="20"><select size="1" name="D2"><option>Poor</option>        <option>Average</option>

        <option selected>Good</option>
        <option>Very good</option>
        <option>Excellent</option>
        </select></td>
    </tr>
    <tr>
      <td width="63%" height="20">
      <p style="margin-top: 6; margin-bottom: 6">
		<span style="font-size: 12.0pt; font-family: Times New Roman">The 
		results of experiment were easily interpretable</span></td>
      <td width="37%" height="20"><select size="1" name="D3"><option>Poor</option>        <option>Average</option>

        <option selected>Good</option>
        <option>Very good</option>
        <option>Excellent</option>
        
        </select></td>
    </tr>
    <tr>
      <td width="63%" height="20">
      <p style="margin-top: 6; margin-bottom: 6">
		<span style="font-size: 11.0pt; font-family: Times New Roman">Did 
		you get the feel of “actual lab” while performing the experiments?
		</span></td>
      <td width="37%" height="20"><select size="1" name="D9">
        <option selected>Yes</option>
        <option>No</option>
        </select></td>
    </tr>
    
    <tr>
      <td width="63%" height="20">
      <p style="margin-top: 6; margin-bottom: 6">
		<span style="font-size: 11.0pt; font-family: Times New Roman">Did you 
		go through the manual/step by step method before performing the 
		experiments live?</span></td>
      <td width="37%" height="20"><select size="1" name="D10">
        <option selected>Yes</option>
        <option>No</option>
        </select></td>
    </tr>
    <tr>
      <td width="63%" height="20">
      <p style="margin-top: 6; margin-bottom: 6">
		<span style="font-size: 11.0pt; font-family: Times New Roman">Could you 
		measure and analyze the data successfully? </span></td>
      <td width="37%" height="20"><select size="1" name="D11">
        <option selected>Yes</option>
        <option>No</option>
        </select></td>
    </tr>
    <tr>
      <td width="63%" height="20">
      <p style="margin-top: 6; margin-bottom: 6">
		<span style="font-size: 11.0pt; font-family: Times New Roman">Could you 
		compare your results with the given typical results?</span></td>
      <td width="37%" height="20"><select size="1" name="D12">
        <option selected>Yes</option>
        <option>No</option>
        </select></td>
    </tr>
    <tr>
      <td width="63%" height="20">
      <p style="margin-top: 6; margin-bottom: 6">
		<span style="font-size: 11.0pt; font-family: Times New Roman">Do you 
		think performing experiments through virtual labs are more challenging 
		than the real lab experiments? </span></td>
      <td width="37%" height="20"><select size="1" name="D13">
        <option selected>Yes</option>
        <option>No</option>
        </select></td>
    </tr>
    <tr>
      <td width="63%" height="20">
      <p style="margin-top: 6; margin-bottom: 6">
		<span style="font-size: 11.0pt; font-family: Times New Roman">Do you 
		think doing experiments through virtual lab gives scope for more 
		innovative and creative research work? </span></td>
      <td width="37%" height="20"><select size="1" name="D14">
        <option selected>Yes</option>
        <option>No</option>
        </select></td>
    </tr>
    <tr>
      <td width="63%" height="20">
      <p style="margin-top: 6; margin-bottom: 6"><font face="Times New Roman">How helpful do you feel the 
		system is:</font></td>
      <td width="37%" height="20">&nbsp;</td>
    </tr>
    <tr>
      <td width="100%" height="20" colspan="2">
        <textarea rows="5" name="S1" cols="50"></textarea></td>
    </tr>
     <tr>
      <td width="63%" height="20">
      <p style="margin-top: 6; margin-bottom: 6">
		<span style="font-size: 12.0pt; font-family: Times New Roman">Specify 
		problems/difficulties you faced while performing the experiments:</span></td>
      <td width="37%" height="20">&nbsp;</td>
    </tr>
    <tr>
      <td width="100%" height="20" colspan="2">
        <textarea rows="5" name="S2" cols="50"></textarea></td>
    </tr>
    <tr>
      <td width="63%" height="20">
      <p style="margin-top: 6; margin-bottom: 6">
		<span style="font-size: 12.0pt; font-family: Times New Roman">Give most 
		interesting thing about the experiments:</span></td>
      <td width="37%" height="20">&nbsp;</td>
    </tr>
    <tr>
      <td width="100%" height="20" colspan="2">
        <textarea rows="5" name="S3" cols="50"></textarea></td>
    </tr>
   
    <tr>
      <td width="100%" height="20" colspan="2">
      
        <input type="hidden" name="sub" value="<%=submitted%>"><p>
        
         <table border="0" cellspacing="0" width="100%" style="border-collapse: collapse" bordercolor="#111111"cellpadding="0" height="2">
		
		<tr>
		<td width="100%">
        <input type="button" value="Submit Feedback" name="B2" onclick="verify2()" style="height: 28px; width: 150px; color: #FFFFFF; border-style: solid; border-width: 0; background-image: url('images/blackbutton.jpg')"><%if(session_user.equals("krishna")||session_user.equals("bkmohan")||session_user.equals("el")){%> <input type="button" value="View" name="B3" onclick="view()" style="height: 28px; width: 100px; color: #FFFFFF; border-style: solid; border-width: 0; background-image: url('images/blackbutton.jpg'); width:59"><%}%></td>
		<input type="hidden" name="feed" value="0">
		</tr>
		</table>
      </form></td>
    </tr>
    <%}%>
    </table>
    
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



<script language = "javascript" >
{
var h=document.getElementById("t1").offsetHeight;
h=h;
document.getElementById("table2").style.height=""+h+"px";

	if(document.form1.sub.value=="2")
	{
		alert("You must be signed in before submitting the feedback!");
	}
}
function verify2()
{
  	//if(document.form1.S1.value=="")
//  	{
  		
  //		alert("First enter some comments!");
  		
//  	}
  //	else
    //{
    	var str=document.form1.S1.value + "";
    	str=str.replace("\n","</br>");
    	str=str.replace("\\","\\\\");
    	str=str.replace("\\\\","\\\\");

    //	str=str.replace("'","\'");
    	
    	document.form1.S1.value=str;

		str=document.form1.S2.value + "";
    	str=str.replace("\n","</br>");
    	str=str.replace("\\","\\\\");
    	str=str.replace("\\\\","\\\\");

    //	str=str.replace("'","\'");
    	
    	document.form1.S2.value=str;
		
		str=document.form1.S3.value + "";
    	str=str.replace("\n","</br>");
    	str=str.replace("\\","\\\\");
    	str=str.replace("\\\\","\\\\");

    //	str=str.replace("'","\'");
    	
    	document.form1.S3.value=str;



    	document.form1.feed.value="1";
    	document.form1.action="feedbacknew.jsp";
  	    document.form1.submit();
  	//}
}
function view()
{
//alert("");
	var form = document.createElement("form");
    form.setAttribute("method", "post");
    form.setAttribute("action", "feedbackdetails.jsp");
    
    // setting form target to a window named 'formresult'
    form.setAttribute("target", "formresult");
    
    var hiddenField = document.createElement("input");   
         
    hiddenField.setAttribute("name", "id");
     hiddenField.setAttribute("type", "hidden");

     
    hiddenField.setAttribute("value", "kk");
     form.appendChild(hiddenField);

    document.body.appendChild(form);
    
    // creating the 'formresult' window with custom features prior to submitting the form
    window.open("feedbackdetails.html", 'formresult', "scrollbars=yes,menubar=no,height='100%',width='100%',resizable=yes,toolbar=no,status=no");
    
   form.submit();
}

                  </script>

</body>

</html>