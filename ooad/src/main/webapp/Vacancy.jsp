<%-- 
    Document   : Vacancy
    Created on : Jul 18, 2019, 3:32:45 PM
    Author     : dell
--%>

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
                              <a href="index.html">Logout</a>
                </div>
                </div>
               <div class="col-lg-9">
                    <div class="col-lg-5 offset-3">             
                    
                        <h3 class="text-primary">Add Vacancy</h3><br />
                            <form action="VacancyJ.jsp">
                    
                       <div class="form-group">
                        <label for="inputName">Company Id</label>
                        <input class="form-control" type="text" name="c_id" placeholder="Enter Company Name" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputName">Job Proof</label>
                        <input class="form-control" type="text" name="job" placeholder="Enter Company Name" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputName">Salary</label>
                        <input class="form-control" type="text" name="salary" placeholder="Enter Company Name" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputName">Eligibility Criteria</label>
                        <input class="form-control" type="text" name="elig" placeholder="Enter Company Name" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputName">Bond</label>
                        <input class="form-control" type="text" name="bond" placeholder="Enter Company Name" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputName">Email</label>
                        <input class="form-control" type="text" name="email" placeholder="Enter Company Name" />
                    </div>
                        <button type="submit" class="btn btn-primary">Add Vacancy</button>
                   </form>      
                    </div>                           
                </div>
            </div>
        </div>
    </body>
</html>
