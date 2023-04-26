<%-- 
    Document   : VacancyJ
    Created on : Jul 21, 2019, 12:56:35 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
         <link href="cstyle.css" rel="stylesheet"/>
        <title>Campus Recruitment System</title>
    </head>
    <body>
       <div class="container">
            <div class="row">
                <div class="col-lg-12">                                            
                    <div class="sidebarContent"><img src="image/campus.png" class="img-fluid" ></div>                        
                </div>                
            </div>
            <div class="row">
                <div class="col-lg-3">                    
                          <div class="mainContent">
                              <br>
                              <br>
                              <a href="Vacancy.jsp">Add Vacancy</a><br>                              
                </div>
                <div class="col-lg-9">
                               <div class="col-lg-5 offset-3">             
                     <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String cid=request.getParameter("c_id");
             String job=request.getParameter("job");
             String salary=request.getParameter("salary");
             String elig=request.getParameter("elig");
             String bond=request.getParameter("bond");
             String email=request.getParameter("email");
             
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/company","root","admin");
             
             st = c1.createStatement();
             q="insert into vacancy(c_id,job,salary,elig,bond,email) values('"+ cid +"','"+ job +"','"+ salary +"','"+ elig +"','"+ bond +"','"+ email +"')";
             
             st.executeUpdate(q);
             out.println("Add New Vacancy Details Successfully...");
                   
    }
    catch(Exception e)
    {
                    out.println("Invalid");
                     out.println("<a href='Vacancy.jsp'>Try Again</a>");
    }        
            
   %>
                               </div>
                </div>
                </div>
            </div>
        </div>
    </body>
</html>
