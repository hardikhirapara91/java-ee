<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
    	
    	<h3>Registration Form</h3>
    	
        <form method="post" action="processRegister.jsp">
            <table border="1" width="30%" cellpadding="5">
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="firstname" required /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lastname" required /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" required /></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="username" required /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" required /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>