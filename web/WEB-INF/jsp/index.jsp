<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
    <!--    
    <spring:url value="/resources/bootstrap/css/bootstrap.min" var="crunchifyCSS" />
        <spring:url value="/resources/bootstrap/js/bootstrap.min" var="crunchifyJS" />
    -->
    <link type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap/js/bootstrap.min.js" rel="stylesheet"/>
    <link type="text/css" href="<%=request.getContextPath() %>/resources/css/shaashi.css" rel="stylesheet"/>
        
        <style type="text/css">
        </style>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-inverse" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                </button>
                    <a class="navbar-brand" href="#">Start Review Web Page</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                      <li>
                         <a href="#">About</a>
                      </li>
                      <li>
                         <a href="#">Colleges</a>
                      </li>
                      <li>
                         <a href="#">Contact</a>
                      </li>
                 </ul>
                </div>
            </div>
            
        </nav>
        <div class="container">
            <header class="jumbotron hero-spacer">
                <h4>WELCOME TO MY APPLICATION</h4>
                <legend> Designed By ${printme} WEB APPLICATION</legend>
            </header>
            <!--login  form come here --> 
             <div class="row">
                <div class="col-md-offset-5 col-md-3">
                    <div class="form-login">
                    <h4>Hello Shashi,,,,</h4>
                    <input type="text" id="userName" class="form-control input-sm chat-input" placeholder="username" />
                    </br>
                    <input type="text" id="userPassword" class="form-control input-sm chat-input" placeholder="password" />
                    </br>
                    <div class="wrapper">
                    <span class="group-btn">     
                        <a href="#" class="btn btn-primary btn-md">Login <i class="fa fa-sign-in"></i></a>
                        <a href="Register" class="btn btn-primary btn-md">Register <i class="fa fa-sign-in"></i></a>
                    </span>
                    </div>
                    </div>

                </div>
            </div>
            <!-- designed for exa,ple -->
            <hr>
            

        <!-- Title -->
        <div class="row">
            <div class="col-lg-12">
                <h3>TOP JOBS AND COLLEGES</h3>
            </div>
        </div>
        <!-- /.row -->

        <!-- Page Features -->
        <div class="row text-center">

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="http://placehold.it/800x500" alt="">
                    <div class="caption">
                        <h3>Feature Label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        <p>
                            <a href="#" class="btn btn-primary">VIEW</a> <a href="#" class="btn btn-default">APPLY</a>
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="http://placehold.it/800x500" alt="">
                    <div class="caption">
                        <h3>Feature Label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        <p>
                            <a href="#" class="btn btn-primary">VIEW</a> <a href="#" class="btn btn-default">APPLY</a>
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="http://placehold.it/800x500" alt="">
                    <div class="caption">
                        <h3>Feature Label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        <p>
                            <a href="#" class="btn btn-primary">VIEW</a> <a href="#" class="btn btn-default">APPLY</a>
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="http://placehold.it/800x500" alt="">
                    <div class="caption">
                        <h3>Feature Label</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        <p>
                            <a href="#" class="btn btn-primary">VIEW</a> <a href="#" class="btn btn-default">APPLY</a>
                        </p>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.row -->

        <hr>
        
          <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>
        <a href="empform">Register</a>  
        <a href="viewemp">View Employees</a>  
        </div>
    </body>
</html>