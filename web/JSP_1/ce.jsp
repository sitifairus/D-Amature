<%-- 
    Document   : BMI.jsp
    Created on : Jul 8, 2015, 10:37:10 AM
    Author     : aya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        
        <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="scripts/jquery.min.js"></script>
        <script src="../bootstrap/js/bootstrap.min.js"></script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <style>
            table.table1 {
                width : 100px;
                text-align : center;
            }
            table.table2 {
                width:25%;
                
            }
            tr,td{
               text-align:center; 
            }
        </style>  
    </head>
    <body>
        <% if((request.getParameter("subBtn")!=null)){
            double v = Double.parseDouble(request.getParameter("vnd"));
            String type = (String)request.getParameter("moneytype");
            double newv = 0;
        %>
        <table id = "table1"  align = "center" border = "1">
            <tr><td colspan = "2" style = "background-color:red"  >CURRENCY EXCHANGE</td></tr>
            <tr>
               <td width="100px"><form  action="./ce.jsp" method="get" class="form-inline"> 
                   VND : <input type="text" name="vnd" ><% if(request.getParameter("vnd")!=null) out.println(request.getParameter("vnd"))%>
                   
                   <div><br>
                        <input type="radio" name="moneytype" value="USD">USD
                        <input type="radio" name="moneytype" value="EURO">EUR
                        <input type="radio" name="moneytype" value="JPY">JPY
                   </div>
                   <br>
                   <input type="submit" value="Exchange" class="btn btn-primary" name="subBtn">
                   </form>
               </td> 
               <td width="50px"><table id = "table2" width="50%" align = "right" border = "1"> 
                       <tr><td colspan = "2">Exchange Rates</td></tr>
                       <tr>
                           <td>Currency</td>
                           <td>Rate</td>
                       </tr>
                       <tr>
                           <td>USD</td>
                           <td>16,452</td>
                       </tr>
                       <tr>
                           <td>EUR</td>
                           <td>25,170.38</td>
                       </tr>
                       <tr>
                           <td>JYP</td>
                           <td>151.23</td>
                       </tr>
                    </table></td>
            </tr>
        </table>
        <% if((request.getParameter("subBtn")!=null)){
                        
            if(null != type)switch (type) {
                case "USD":
                    newv = v/16452;
                    break;
                case "EURO":
                    newv = v/25170.38;
                    break;
                default:
                    newv = v/151.23;   
                    break;
            }   
            double con = Math.round(newv*100.0)/100.0;
        
        out.print("Result");
        out.print(v+ " VND is equals to " +con + type );}
        %>
        
        <% = v%> + " VND is equals to " <%=con%> + <%=type%>
        
        
    </body>
</html>
