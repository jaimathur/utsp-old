<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>
<%
		Cookie cookies[]=request.getCookies();
		Cookie killCookie=new Cookie("username",null);
		killCookie.setMaxAge(0);
		response.addCookie(killCookie);
		killCookie=new Cookie("uploadpath",null);
		killCookie.setMaxAge(0);
		response.addCookie(killCookie);


    	
%>
<form name="form1" action="index.jsp" target="_parent">
</form>
<script language = "javascript" >
{
  
  			document.form1.submit();
    	
}  
</script>

</body>

</html>