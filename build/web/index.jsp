<%-- 
    Document   : index
    Created on : May 12, 2018, 1:53:51 PM
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
        <!-- Form which accepts the input variables -->
        <!-- Client side validations does not allows user to submit form with invalid inputs -->
        <!-- After Validating form successfully ComputeHashes Servlet is invoked  -->
      <form name="hash" action="ComputeHashes" method="post">
          <div style="width: 50%;margin-left: 25%;">
            <table class="table table-hover" align="center" cellspacing="5" cellpadding="2">
                <tr>
                    <td>
                        <b> Enter a text:</b> 
                    </td>
                    <td>
                        <input type="text" name="var" required/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <!--<input type="submit" value="Compute" />-->
                    </td>
                    <td>
                        <input type="submit" value="Compute" />
                    </td>
                </tr>
            </table>
          </div>
        </form>
    </body>
</html>
