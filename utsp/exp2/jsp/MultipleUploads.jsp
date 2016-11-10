<html>
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Upload Image To Your Account</title>








	

<%@ page language="java" import="javazoom.upload.*,java.util.*,java.io.*" %>
<%@ page errorPage="ExceptionHandler.jsp" %>
<%
String path="";

//----------------------------------------------------for session check----------------------//
String session_user="";

Cookie cookies[]=request.getCookies();
if(cookies!=null)
{
		
	for(int i=0;i<cookies.length;i++)
	{
			//out.println(cookies[i].getName()+"");
		if(cookies[i].getName().equals("uploadpath"))
		{
			path=cookies[i].getValue();
			break;
		}
	}
}
//-------------------------------------------------------------------------------------------//



//path=path+session_user;
//out.println(path);
%>
<jsp:useBean id="upBean" scope="session" class="javazoom.upload.UploadBean" >
   <jsp:setProperty name="upBean" property="folderstore" value="<%=path%>" />
  
</jsp:useBean>

<head>
<title>Samples : Multiple Uploads</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="Javascript"><!--
  function doUpload()
  {
  	document.upload.T1.value=document.upload.uploadfile1.value;
    document.upload.todo.value="upload";
	document.upload.submit();
  }
  function doClean()
  {
    document.upload.todo.value="cleanstore";
	document.upload.submit();
  }
  function cont()
  {
    //dcoument.upload.action=document.upload.prevurl.value;
  	//document.upload.submit();
  	window.location.href=document.upload.prevurl.value;
  	  }
  //--></script>
</head>
<body bgcolor="#E1F1FB">
<p align="center">
</br>
<div align="center">
<table width="90%" border="0" cellspacing="1" cellpadding="1" style="border-left-width: 0px; border-right-width: 0px; border-bottom-width: 0px">
    <tr>
      <td align="left" bgcolor="#0E92E4" style="border-bottom-style: none; border-bottom-width: medium"><font size="6" color="#FFFFFF">
		Upload your experimental satellite image*</font></td>
    </tr>
    <tr>
      <td align="left" bgcolor="#FFFFFF">* Your header file should be of same 
		name as the name of satellite image with an extension (.hdr). It is only 
		needed in the case of raw images. <br>You can download sample header file from <a href="samplehdr.hdr">here</a> (right click and select save link as)</br></td>
    </tr>
   

<% 
	String url="";
	url=request.getParameter("prevurl");
	
	String nm="";
	String fname="";
      if (MultipartFormDataRequest.isMultipartFormData(request))
      {
         MultipartFormDataRequest mrequest = new MultipartFormDataRequest(request);
         String todo = null;
         if (mrequest != null) todo = mrequest.getParameter("todo");
	     if ( (todo != null) && (todo.equalsIgnoreCase("upload")) )
	     {
	     nm=mrequest.getParameter("T1");
	     url=mrequest.getParameter("prevurl");
		fname=nm.substring(nm.lastIndexOf('\\')+1,nm.length());
		
	     //URL u=new URL(nm);
//	     out.println(fname);
	     //out.println(mrequest.getParameter("T1"));
                // Uses the bean now to store specified by jsp:setProperty at the top.
                upBean.store(mrequest);
               /* try{
                	FileWriter fw=new FileWriter(path+"/list.txt",true);
             		fw.write(fname+"\n");
             		fw.close();
             	}catch(Exception e)
             	{
             		//out.println(e.toString());
             	} */  	
                   // Displays info about uploaded files for this session.
                   
                   
               
						/*                   
                       //---------------write code for image binarization---------------------------//
                  
						

                   		Process pr=null;
                   		try{
                   		
                   		String filenm="";
                   		if(fname.lastIndexOf('.')<=0)
                   		{
                   			filenm=fname+"";
                   		}
                   		else
                   		{
                   			filenm=fname.substring(0,fname.lastIndexOf('.'));
                   		}
                   		
     						PrintStream ps=new PrintStream(new FileOutputStream("c:/uploads/"+session_user+"_bin/"+filenm+".txt",false));
							System.setOut(ps);
							System.out.println("c:/uploads/"+session_user+"/"+fname);
							System.out.println("c:/uploads/"+session_user+"_bin/"+filenm+"_bin");

					//out.println("b");
                   		if(fname.lastIndexOf('.')<=0)
                   		{
                   	//	out.println("a");
                   			String sline1="";
                   			String noOfband[];
                   			String noband="";
                   			String interleave="";
                   			String row="";
                   			String col="";
                   			
 					
								FileInputStream fs1=new FileInputStream("c:/uploads/"+session_user+"/"+fname+".hdr");
								DataInputStream in1 =new DataInputStream(fs1);
								BufferedReader br1=new BufferedReader(new InputStreamReader(in1));
								while((sline1=br1.readLine())!=null)
								{//out.println(sline);
	
										noOfband=sline1.split("=");
										if(noOfband.length==2)
										{
										     if(((noOfband[0]).trim()).compareToIgnoreCase("bands")==0)
										     {
												noband=noOfband[1].trim();
												//break;
											}
											else if(((noOfband[0]).trim()).compareToIgnoreCase("lines")==0)
										     {
												row=noOfband[1].trim();
												//break;
											}
											else if(((noOfband[0]).trim()).compareToIgnoreCase("samples")==0)
										     {
												col=noOfband[1].trim();
												//break;
											}
											else if(((noOfband[0]).trim()).compareToIgnoreCase("interleave")==0)
										     {
												interleave=noOfband[1].trim();
												//break;
											}
										}		
								}
								System.out.println(row+"");
								System.out.println(col+"");
								System.out.println(noband+"");
								System.out.println(interleave+"");
								System.out.println("uint8");
							
                   			pr= Runtime.getRuntime().exec("C:/VSIP/rawtobin.exe C:/uploads/"+session_user+"_bin/"+filenm+".txt");
                   		}
                   		else
                   		{
                   			pr= Runtime.getRuntime().exec("C:/VSIP/imgtobin.exe C:/uploads/"+session_user+"_bin/"+filenm+".txt");
                   		}
                   		ps.close();
                   		pr.waitFor();
						pr.destroy();
						}catch(Exception e)
						{
							out.println(e.toString());
						}

						*/
                   
                   
                   
                   
                   //--------------------------------------------------------------------------//
                   
                   
                   
                   
                %>
                 <tr>
   				   <td align="left" bgcolor="#FFFFFF">Image uploaded. You can 
					upload more images or you can proceed to experiments by 
					clicking on continue</td>
   				 </tr>
				

				
              

                <%
	     }
	     else if ( (todo != null) && (todo.equalsIgnoreCase("cleanstore")) )
	     {
            upBean.resetStore();
            out.println("<BR>Store cleaned");
         }
         else out.println("<BR> todo="+todo);
      }
      
      
      
      
%>
 <tr>
   				   <td align="left" bgcolor="#FFFFFF">
   				   
   				   <form method="post" action="MultipleUploads.jsp" name="upload" enctype="multipart/form-data">
	<p align="center">
	</br>
  <table  width="100%" border="0" cellspacing="1" cellpadding="1" align="center" class="style1">
    <tr>
      <td align="left"><font color="#000000">Image File</font></br><input type="file" name="uploadfile1" size="50"></td>
    </tr>
    <tr>
      <td align="left"><font color="#000000">Header File</font></br><input type="file" name="uploadfile2" size="50"></td>
    </tr>
    <tr>
      <td align="left"><input type="hidden" name="T1"><input type="hidden" name="prevurl" value="<%=url%>"></td>
    </tr>
    <tr>
      <td align="left">
        <input type="hidden" name="todo">
        <input type="button" name="Submit" value="Upload" onClick="doUpload()">&nbsp;
        <input type="button" name="Reset" value="Continue" onClick="cont()">
        </td>
    </tr>
  </table>
  
  </form>

   				   
   				   
   				   </td>
   				 </tr>
              
  </table>


</div>


</body>
</html>