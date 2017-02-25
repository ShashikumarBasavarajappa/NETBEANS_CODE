<%-- 
    Document   : Register
    Created on : Feb 22, 2017, 10:29:58 PM
    Author     : insbasavar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
        <link type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap/js/bootstrap.min.js" rel="stylesheet"/>
        <link type="text/css" href="<%=request.getContextPath() %>/resources/css/Register.css" rel="stylesheet"/>
        <title>JSP Page</title>
    </head>
    <body>
        <form class="form-horizontal" method="post" action="Registersave"> 
             <fieldset>
                <div id="legend">
                  <legend class="">Register</legend>
                </div>
        <div class="container">
                
                <div class="form-group">
                    <label for="firstname" class="col-sm-3 control-label">Full Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstname" name="firstname" placeholder="Full Name" class="form-control" autofocus>
                        <span class="help-block">Last Name, First Name, eg.: Smith, Harry</span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" id="email" placeholder="Email" name="email" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                        <input type="password" id="password" placeholder="Password" name="password" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Register</button>
                    </div>
                </div>
        </div> <!-- ./container -->
        </fieldset>
        </form>
    </body>
</html>
