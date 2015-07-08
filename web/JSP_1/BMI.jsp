<%-- 
    Document   : BMI
    Created on : Jul 8, 2015, 10:17:36 AM
    Author     : user8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center">
        <form name="BMIcalc" action="./BMI.jsp">
        <div><br><table align="center" border="2" width="350">
                <br><br><br><th style="color:#3e8f3e"><br> BMI CALCULATOR <br><br></th>
                <tr><td><br>
                        
            Name :  <input type="text" class="formControl" name="name" value = "<%if (request.getParameter("name")!=null) out.println(request.getParameter("name"));%> " placeholder="Your Name"<br><br><br>
            Height (m): <input type="text" class="formControl" name="height" value = "<%if (request.getParameter("height")!=null) out.println(request.getParameter("height"));%>" placeholder="Your Height"<br><br><br>
            Weight (kg): <input type="text" class="formControl" name="weight"value = "<%if (request.getParameter("weight")!=null) out.println(request.getParameter("weight"));%>" placeholder="Your Weight"<br><br><br><br>
                                
            <input type="submit" name="calculateBMIButton" value="Calculate BMI"></td></tr><br></table>
        </div></form>
            
            <% if ((request.getParameter("name")!=null) && (request.getParameter("height")!=null) && ((request.getParameter("weight")!=null))){ %>
            
             <%
            boolean err_flg = false;
            if (request.getParameter("name")==""){
                out.println("<div class='text-center'>Missing name input</div>");
                err_flg = true;
            }
                
            if (request.getParameter("height")==""){
                out.println("<div class='text-center'>Missing height value</div>");
                err_flg = true;
            }
                    
            if (request.getParameter("weight")==""){
                out.println("<div class='text-center'>Missing weight value</div>");
                err_flg = true;
            }
            
            if (err_flg) return;
            
            String n = (String)request.getParameter("name"); 
            double h = Double.parseDouble(request.getParameter("height"));
            double w = Double.parseDouble(request.getParameter("weight"));
            
            double bmi=w/h/h;
        %>
        <table align="center">
            <tr>
                <td class = "text-right"> Name : </td>
                <td> <%= n%></td>
            </tr>
            <tr>
                <td class = "text-right"> Height : </td>
                <td> <%= h%> m</td>
            </tr>
            <tr>
                <td class = "text-right"> Weight : </td>
                <td> <%= w%> kg</td>
            </tr>
            <tr>
                <td class = "text-right"> BMI : </td>
                <td> <%= String.format("%.2f", bmi)%> </td>
            </tr>
            <tr>
                <td colspan ="2"><%
                    if (bmi<18.5) out.println("Your body condition are underweight");
                    else if (bmi<25) out.println("Your body condition are normal");
                    else if (bmi<30) out.println("Your body condition are overweight");
                    else out.println("Your body condition are obese");
            %>
                </td>
            </tr>
        </table>
        <% } %>
        </div>
    </body>
</html>

