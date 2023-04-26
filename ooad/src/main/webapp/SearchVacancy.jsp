<%-- 
    Document   : SearchVacancy
    Created on : Jul 18, 2019, 3:33:59 PM
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
                               <a href="SearchVacancy.jsp">Search Vacancy</a><br>
                              <a href="AllCompany.jsp">All Company</a></div>    
                                <a href="index.html">Logout</a>   
                </div>
                <div class="col-lg-9">
                     <form action="SearchVacancy.jsp">
                    
                       <div class="form-group">
                        <label for="inputName">Job Profile</label>
                        <input class="form-control" type="text" name="jobp" placeholder="Enter Job Profile Name" />
                    </div>
                          <button type="submit" class="btn btn-primary">Search Vacancy</button>
                     </form>
                    <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try
    {
        String jobp=request.getParameter("jobp");
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/company","root","admin");
           
             st = c1.createStatement();
             q="select c_id,job,salary,elig,bond,email from vacancy where job='"+jobp+"'";
             rs1=st.executeQuery(q);
             out.println("<table>");
              out.println("<tr><th>Id</th><th>Job</th><th>Salary</th><th>Eligibility</th><th>Bond</th><th>Email</th></tr>");
             while(rs1.next())
             {
            	 String id=rs1.getString("c_id");
                 String job=rs1.getString("job");
                 String salary=rs1.getString("salary");                 
                 String elig=rs1.getString("elig");
                 String bond=rs1.getString("bond");
                 String email=rs1.getString("email");
                 out.println("<tr><td>"+id+"</td><td>"+job+"</td><td>"+salary+"</td><td>"+elig+"</td><td>"+bond+"</td><td>"+email+"</td></tr>");
             }   
              }
             catch(Exception e)
             {
                   out.print(e);
             }
            
   %>
                </div>
            </div>
        </div>
    </body>
</html>
