<%-- 
    Document   : tuition_1
    Created on : Jul 8, 2015, 9:17:09 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        
   
    <body> 
        <form action="./tuition_1.jsp" method="POST" ><br>
            <table align="center">
                <tr>
                    <h2 align="center"> TUITION CALCULATOR</h2>
                </tr>
                <tr>
                    <td>Number of AAS course(s):</td>
                    <td><input type="text" name="aasTextBox"> ($120</td>              
                </tr>
                
                <tr>
                    <td>Number of ESL course(s):</td>
                    <td><input type="text" name="eslTextBox"> ($75)</td>
                </tr>
                
                <tr>
                    <td>
                        Type of Student:
                    </td>
                    <td>
                        <select name="Rate">
                            <option value="Normal">Normal</option>
                            <option value="10% Discount">10% Discount</option>
                            <option value="20% Discount">20% Discount</option>
                            <option value="30% Discount">30% Discount</option></select>
                    </td>
                </tr>
                
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" name="calculateButton" value="Calculate">
                    </td>
                </tr>
            </table>
        </form>    
        
        <%--java code--%>
        <table align="center">
        <%
            
            if(request.getParameter("aasTextBox") !=null){
                out.println("<h2> Summary : </h2>\n");
                if(request.getParameter("aasTextBox").equals(""))
                    out.println("<br><html><font color=red>Please enter number of AAS subject taken.</font></html>");
                else
                    out.println("<br>No of AAS Subject Taken : " + request.getParameter("aasTextBox"));
                
            }
            
            if(request.getParameter("eslTextBox") !=null){
                if(request.getParameter("eslTextBox").equals(""))
                    out.println("<br><html><font color=red>Please enter number of ESL subject taken.</font></html>");
                else
                    out.println("<br>No of ESL Subject Taken : " + request.getParameter("eslTextBox"));
            }
            
           String rate = request.getParameter("Rate");
          
           if(request.getParameter("aasTextBox") !=null){
               String a = request.getParameter("aasTextBox") ;
               String e = request.getParameter("eslTextBox") ;
               int aa = Integer.parseInt(a);
               int ee = Integer.parseInt(e);
               double fee;
               if("Normal".equals(rate))
               {
                   fee=(aa*120)+(ee*75);
                   out.println("<br>"+fee);
               }
               
                else if ("10% Discount".equals(rate))
                {
                    fee=((aa*120)+(ee*75)*0.90);
                    out.println("<br>"+fee);
                }
               
               else if ("20% Discount".equals(rate))
                {
                    fee=((aa*120)+(ee*75)*0.80);
                    out.println("<br>"+fee);
                }
               
               else
                fee=((aa*120)+(ee*75)*0.70);
               
               out.println("<br>Discount Awarded : " +request.getParameter("Rate"));
               out.println(" <br>Total Fees : $" + fee );
           }
           
           
           
                
        %>
        </table>
        
        
        
    </body>
</html>
