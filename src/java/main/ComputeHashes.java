/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package main;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sun.misc.BASE64Encoder;

/**
 *
 * @author Pavan Kumar
 */
public class ComputeHashes extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       // Variables which read the values entered by user
		String name = request.getParameter("var");
                String hexMD5Value = "";
                String baseEncodedMD5Value = "";
                String hexSHA1Value = "";
                String baseEncodedSHA1Value = "";
		
                    try{ 
                  // Invoking method which calculates return Byte Array based on given input and Hashing Algorithm
                  byte byteDataMD5[] = getByteArrayUsingGivenHashingMethod(name, "MD5");          
                  byte byteDataSHA1[] = getByteArrayUsingGivenHashingMethod(name, "SHA-1");
                  // Invoking method which Hexadecimal value for an Byte Array
                  hexMD5Value = getHexValueUsingByteArray(byteDataMD5);
                  hexSHA1Value = getHexValueUsingByteArray(byteDataSHA1);
                  
                  // Encoding the Byte array using BASE64Encoder Class
                  BASE64Encoder base = new BASE64Encoder();
                  baseEncodedMD5Value = base.encode(byteDataMD5);
                  baseEncodedSHA1Value = base.encode(byteDataSHA1);
                  
                  // setting the data into variables which is read on resultant JSP page.
                  request.setAttribute("hexMD5Value", hexMD5Value);
                  request.setAttribute("baseEncodedMD5Value", baseEncodedMD5Value);
                  request.setAttribute("hexSHA1Value", hexSHA1Value);
                  request.setAttribute("baseEncodedSHA1Value", baseEncodedSHA1Value);
                  request.setAttribute("name", name);
                  // Sent the control to Result.JSP with request and response objects
		  RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
		  rd.forward(request, response);
		}
                  catch(NoSuchAlgorithmException ex){
                       // Handles the Exception 
                       System.out.println(ex.getMessage());
                }
	}
    
    /*
     * getByteArrayUsingGivenHashingMethod uses MessageDigest class to Hash the input based on given Hashing ALgorithm
     * accepts value and hashing method name
     * returns Byte[] array
     */
    private byte[] getByteArrayUsingGivenHashingMethod(String value,String hashMethod) throws NoSuchAlgorithmException
    {
        byte result[] ;
        MessageDigest md = MessageDigest.getInstance(hashMethod);
        md.update(value.getBytes());        
        result = md.digest();
        return result;
        
    }
    
    /*
     * getHexValueUsingByteArray returns Hexvalue input based on given Hashing ALgorithm
     * accepts Byte[] array
     * returns String Hexvalue
     */
    private String getHexValueUsingByteArray(byte[] array){
        String str;
         StringBuffer sb1 = new StringBuffer();
                  for (int i = 0; i < array.length; i++) {
                    sb1.append(Integer.toString((array[i] & 0xff) + 0x100, 16).substring(1));
                   }
        str = sb1.toString();
        return str;
    }
    
}
