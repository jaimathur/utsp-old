<%@ page language = "java" import = "java.io.*" %>

<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>
<%//if(session.isNew()==false || 
	if(session.getAttribute("username")!=null)
		response.sendRedirect(response.encodeRedirectURL("simu.html"));
  else
  		response.sendRedirect(response.encodeRedirectURL("login.jsp"));

%>
<body>

</body>

</html>