<%-- 
    Document   : Mark
    Created on : Jul 8, 2015, 10:15:27 AM
    Author     : on
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body align="center">
        <div align="center">
        <div  align="center" style="border: solid 2px; width:400px;">
        <div><h1>Mark Calculation</h1></div>
        <div>
            <form name="form" action="./markServlet" method="GET" onsubmit="return validateForm()">
            <table align="center">
                <tr>
                    <td colspan="3">
                        <b>Mark in Percentage :  </b>
                        <input type="text" name="txtMark" id = "txtMark">
                    </td>
                </tr>
                <tr align="right">
                    <td></td>
                    <td>
                    Grade<input type="checkbox" name="gradeCheckBox" value="Grade">
                    </td>
                    <td>
                    Point<input type="checkbox" name="pointCheckBox" value="Point">
                    </td>
                </tr>
                <tr align="center">
                    <td></td>
                    <td></td>
                    <td colspan="3">
                    <input type="submit" name="convertButton" value="Convert">
                    </td>
                </tr>
            </table>
            </form>
        </div>
        </div>
        </div>
    </body>
</html>
