<%@ page language = "java" import = "commonclasses.ReadImage, java.io.*, java.awt.*, javax.imageio.*, java.awt.image.*;" %>

<html>
<head>
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">

<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Experiment 9: K-Means Clustering</title>
</head>

<body bgcolor="#E1F1FB">
<%
String sampleFiles[]=null;
File f;

try{
	Process pr=null;
pr=Runtime.getRuntime().exec("c:/immp/AA_v2.exe");

}
catch(Exception e)
{
out.println(e.toString());
}

if(request.getParameter("t2")!=null)
{
	try{
InputStream in = new FileInputStream(request.getParameter("t2"));
    OutputStream outf = new FileOutputStream("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/downloadable/"+ request.getParameter("t3"));

    // Transfer bytes from in to out
    byte[] buf = new byte[1024];
    int len;
    while ((len = in.read(buf)) > 0) {
        outf.write(buf, 0, len);
    }
    in.close();
    outf.close();
}
catch(Exception e)
{
out.println(e.toString());
}



}
if(request.getParameter("t1")!=null)
{
	
	try{
	//------------new way--------------------//
		f=new File("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/downloadable/"+request.getParameter("t1"));
		f.delete();
		
		f=new File("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/downloadable");
		sampleFiles=f.list();
	//-------------------------------------//
		}
		catch(Exception e)
		{//out.println(e.toString());
		}
	


}
else
{
try{
//------------new way--------------------//
	f=new File("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/siplabs/downloadable");
	sampleFiles=f.list();
	
//-------------------------------------//
	}
	catch(Exception e)
	{//out.println(e.toString());
	}
}
%>



<%
for(int i=0;i<sampleFiles.length;i++)
{
	out.println(sampleFiles[i]);
%>
</br>
<%
}
%>


<form name="form1" action="tempadddel.jsp">
delete
<input type="text" name="t1" id="t1"/>
copy from
<input type="text" name="t2" id="t2"/>
destination file name
<input type="text" name="t3" id="t3"/>

<input type="submit" name="b1" id="b1"/>
</form>
</body>

</html>