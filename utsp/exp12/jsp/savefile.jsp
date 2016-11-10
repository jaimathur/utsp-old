<%@ page language = "java" import = "java.io.*, java.util.Date, java.awt.*, javax.imageio.*, imageprocessing.*, java.awt.image.*;" %>

<html>
<%
String newfilename=request.getParameter("newfilename");
String oldfilename=request.getParameter("oldfilename");
File f=new File(oldfilename+"trainingwindows"+".trn");
File nf=new File(newfilename+".trn");
boolean chk=f.renameTo(nf);
f=new File(oldfilename+"colorclass"+".clr");
nf=new File(newfilename+".clr");

chk=f.renameTo(nf);
String msg="Not Saved";
if(chk)
{
msg="Signature file saved successfully.";
}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>
<b>
<%out.println(msg);%>
</b>
</body>

</html>
