import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import sun.net.smtp.SmtpClient;

public class Servlet06 extends HttpServlet{
  public void doGet(HttpServletRequest req, 
                    HttpServletResponse res)
                      throws ServletException, IOException{
                        
    try {
    	//Pass a string containing the name of your smtp
    	// server as a parameter to the following 
        // constructor
    	SmtpClient smtp = 
                      new SmtpClient("smtp.rediffmailpro.com");
    	
    	//Pass your email address on your smtp server to
        // the following method.
    	smtp.from("djha@bluekans.com");
    	
    	//Pass the email address of the recipient of the 
    	// message to the next method.
    	smtp.to("c4pramod@gmail.com");

      //Get an output stream for the message
    	PrintStream msg = smtp.startMessage();
    	
    	//Write the message header in the output stream.
    	msg.println("To: dkjhaj2ee@gmail.com");
    	msg.println("Subject: Test Msg from Servlet");
    	msg.println();
    	
    	//Write the text of the message in the output 
        // stream
    	msg.println("Welcome please identify me I am .......");
    	msg.println(new Date());//put date and time in msg

      //Close the stream and send the messaged
    	smtp.closeServer();
    	
    	//Notify HTML client that the message has been sent
      res.setContentType("text/html");
      PrintWriter out = res.getWriter();
    
      out.println("<HTML>");
      out.println("<HEAD><TITLE=Servlet06</TITLE></HEAD>");
      out.println("<BODY>");
    
      out.println("Email message sent<BR>");

      out.println("</BODY></HTML>");
    }catch( Exception e ) {
      e.printStackTrace();
    }//end catch
  }//end doGet()
}//end class Servlet06