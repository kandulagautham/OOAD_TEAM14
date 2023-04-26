<%-- 
    Document   : StudentLogin
    Created on : Jul 13, 2019, 12:01:18 AM
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
                              <a href="index.html">Login</a><br>
                              <a href="About.jsp">About</a></div>                                              
                </div>
                <div class="col-lg-9">
                    <div class="mainContent"><h3 class="text-primary">Login Student</h3><br />
                        <form action="StudentLoginJ.jsp">
                    <div class="form-group">
                        <label for="inputName">Username</label>
                        <input class="form-control" type="text" name="inputName" placeholder="Enter Username" />
                    </div>

                    <div class="form-group">
                        <label for="inputPass">Password</label>
                        <input class="form-control" type="password" name="inputPass" placeholder="Enter Password" />
                    </div>                    

                    <button type="submit" class="btn btn-primary">Login</button>
                </form>
                     <a href="StudentRegistration.jsp">Student Register</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
