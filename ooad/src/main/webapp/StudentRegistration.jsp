<%-- 
    Document   : StudentRegistration
    Created on : Jul 13, 2019, 12:02:08 AM
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
                    <div class="col-lg-5 offset-3">             
                    
                        <h3 class="text-primary">Add Student</h3><br />
                   <form action="StudentJ.jsp">
                    <div class="form-group">
                        <label for="inputName">Name</label>
                        <input class="form-control" type="text" name="sname" placeholder="Enter Student Name" />
                    </div>
                       
                       <div class="form-group">
                        <label for="inputBus"> Gender</label>
                       <select name="gen" class="form-control">
                            <option>--Select--</option>
                            <option>Male</option>
                           <option>Female</option>
                        </select>
                    </div>

                     <div class="form-group">
                        <label for="inputName">email Id</label>
                        <input class="form-control" type="email" name="email" placeholder="Enter Email" />
                    </div>                        
                    <div class="form-group">
                        <label for="inputName">Contact</label>
                        <input class="form-control" type="text" name="contact" placeholder="Enter Contact" />
                    </div>                       
                        <div class="form-group">
                        <label for="inputName">City</label>
                        <input class="form-control" type="text" name="city" placeholder="Enter City" />
                    </div>                
                        <div class="form-group">
                        <label for="inputName">Address</label>
                        <input class="form-control" type="text" name="addr" placeholder="Enter Address" />
                    </div>
                       <div class="form-group">
                        <label for="inputName">Date Of Birth</label>
                        <input class="form-control" type="text" name="dob" placeholder="Enter Date Of Birth" />
                    </div>
                       <div class="form-group">
                        <label for="inputName">Age</label>
                        <input class="form-control" type="text" name="age" placeholder="Enter Age" />
                    </div>
                       <div class="form-group">
                        <label for="inputName">SSC %</label>
                        <input class="form-control" type="text" name="ssc" placeholder="Enter SSC" />
                    </div>
                       <div class="form-group">
                        <label for="inputName">HSC %</label>
                        <input class="form-control" type="text" name="hsc" placeholder="Enter HSC" />
                    </div>
                       <div class="form-group">
                        <label for="inputName">Degree aggregate</label>
                        <input class="form-control" type="text" name="deg" placeholder="Enter Degree" />
                    </div>
                       <div class="form-group">
                        <label for="inputName">Stream</label>
                        <input class="form-control" type="text" name="strem" placeholder="Enter Branch" />
                    </div>
                       <div class="form-group">
                        <label for="inputName">Username</label>
                        <input class="form-control" type="text" name="user" placeholder="Enter Username" />
                    </div>
                       <div class="form-group">
                        <label for="inputName">Password</label>
                        <input class="form-control" type="text" name="pass" placeholder="Enter Password" />
                    </div>
                    <button type="submit" class="btn btn-primary">Add Student</button>
                </form>                
                    </div>                           
                </div>
            </div>
        </div>
    </body>
</html>
