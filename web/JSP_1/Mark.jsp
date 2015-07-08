<%-- 
    Document   : Mark
    Created on : Jul 8, 2015, 10:15:27 AM
    Author     : on
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <script src="scripts/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="scripts/jquery.min.js""></script>
        <script src="../bootstrap/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body align="center">
        <div align="center">
        <div  align="center" style="border: solid 2px; width:400px;">
        <div><h1>Mark Calculation</h1></div>
        <div class="form-group">
            <form class="form-horizontal" role="form" name="form" action="" method="GET" onsubmit="return validateForm()">
            <table align="center">
                <tr>
                    <td colspan="3">
                        <b>Mark in Percentage :  </b>
                        <input type="text" name="txtMark" id = "txtMark" placeholder="Your Exam Mark" required>
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
            <% String m = request.getParameter("txtMark"); String BoxGrade=request.getParameter("gradeCheckBox"); String BoxPoint=request.getParameter("pointCheckBox");%>
        </div>
        <%
            double mark = Double.parseDouble(m);
            String ggrade;
            int pnt;
            if(mark<60)
            {
                ggrade="F";
                pnt=0;
            }
            else if(mark<70)
            {
                ggrade="D";
                pnt=1;
            }
            else if( mark<80)
            {
                ggrade="C";
                pnt=2;
            }
            else if( mark<90)
            {
                ggrade="B"; 
                pnt=3;
            }
            else
            {
                ggrade="A"; 
                pnt=4;
            }
        %>
        </div>
            <br>
        <div align="center" style=" background-color: #FFBAD6; border: #761c19 solid; width:400px; padding-left: 50px; padding-right: 50px" >
            <div align="center" style="background-color: #ce8483; color: #080808"><h1>Your Result</h1></div>
            <div >   
            <form class="form-horizontal" role="form" name="form" action="" method="GET" onsubmit="return validateForm()">
                <% if (BoxGrade!=null&&BoxPoint!=null)
                {%>
               <div class="form-group">
                  <label for="grade" class="col-sm-2 control-label">Your Grade</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" name="midterm" id="midterm" value="<% out.println(ggrade);%>">
                  </div> 
               </div>
                <div class="form-group">
                  <label for="point" class="col-sm-2 control-label">Your Pointer</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" name="point" id="midterm" value="<% out.println(pnt);%>">
                  </div> 
               </div>
               <%}
                else if(BoxGrade!=null&&BoxPoint==null)
               {%>
               <div class="form-group">
                  <label for="grade" class="col-sm-2 control-label">Your Grade</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" name="midterm" id="midterm" value="<% out.println(ggrade);%>">
                  </div> 
               </div>
               <%
               }
                else if(BoxGrade==null&&BoxPoint!=null)
                {%>
                <div class="form-group">
                  <label for="point" class="col-sm-2 control-label">Your Pointer</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" name="point" id="midterm" value="<% out.println(pnt);%>">
                  </div> 
               </div>
                <%
                }%>
               
            </form>
            </div>
        </div>   
        </div>
    </body>
</html>
