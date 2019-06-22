<%-- 
    Document   : result
    Created on : May 12, 2018, 4:34:49 PM
    Author     : Pooja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hashing</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
         <div class="jumbotron text-center">
            <h1>MD5 and SHA-1 hashes</h1>
        </div>
          <!-- Reading the data sent after processing the ComputeHashes Servlet. -->
        <% String name =  request.getAttribute("name").toString();
	String hexSHA1Value = request.getAttribute("hexSHA1Value").toString();
	String baseEncodedSHA1Value = request.getAttribute("baseEncodedSHA1Value").toString();
	String hexMD5Value = request.getAttribute("hexMD5Value").toString();
	String baseEncodedMD5Value = request.getAttribute("baseEncodedMD5Value").toString();
	 %>
       <div style="width: 50%;margin-left: 25%;">
             <!-- Displaying the values in Grid. -->
        <table class="table table-hover" align="center" cellspacing="5" cellpadding="2">
                <tr>
                    <td>
                        <b>
                        Value:
                        </b>
                    </td>
                    <td>
                        <%= name %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                       SHA-1 (Hex):
                       </b>
                    </td>
                    <td>
                        <%= hexSHA1Value %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                       SHA-1 (Base 64):
                       </b>
                    </td>
                    <td>
                        <%= baseEncodedSHA1Value %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                      MD5: (Hex):
                      </b>
                    </td>
                    <td>
                       <%= hexMD5Value %>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>
                      MD5: (Base 64):
                      </b>
                    </td>
                    <td>
                      <%= baseEncodedMD5Value %>
                    </td>
                </tr>
                <tr>
                    <td>
                         <!-- Navigation to Home Page -->
                <a class="btn btn-primary" href="index.jsp">Go Back</a>
                </td>
                </tr>
            </table>
       </div>
    </body>
</html>
