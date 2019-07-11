import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class pdfreader extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws IOException, ServletException
	{
	ServletContext application = getServletContext();
	BufferedInputStream in;
	//BufferedOutputStream output;
	ByteArrayOutputStream baos;
	try
	{
		in = new BufferedInputStream(new FileInputStream(application.getRealPath("JavaMail-1.2.pdf")));
		//output = new BufferedOutputStream(new FileOutputStream(application.getRealPath("convert.xml")));
		baos = new ByteArrayOutputStream(512);
		int imagebyte;
		while((imagebyte=in.read())!=-1)
		{
			baos.write(imagebyte);
		}
		in.close();
		response.setContentLength(baos.size());
		response.setContentType("application/pdf");
		baos.writeTo(response.getOutputStream());
		baos.flush();
	}
	catch(Exception e)
	{
	}
	}
}