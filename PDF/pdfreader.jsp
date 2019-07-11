<%@page import="java.io.*" contentType="txt/html" %>
<%
	BufferedInputStream in;
	ByteArrayOutputStream baos;
	try
	{
		in = new BufferedInputStream(new FileInputStream(application.getRealPath("java.pdf")));
		baos = new ByteArrayOutputStream(512);
		int imagebyte;
		while((imagebyte=in.read())!=-1)
		{
			baos.write(imagebyte);
		}
		in.close();
		response.setContentLength(baos.size());
		baos.writeTo(response.getOutputStream());
		baos.flush();
	}
	catch(Exception e)
	{
		out.println("Exception Occured : " + e);
	}
%>