<%-- 
    Document   : profile
    Created on : Feb 26, 2017, 12:41:05 PM
    Author     : insbasavar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
        <link type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap/js/bootstrap.min.js" rel="stylesheet"/>
        <link type="text/css" href="<%=request.getContextPath() %>/resources/css/adminhome.css" rel="stylesheet"/>
        <script src="<c:url value="/resources/jquery/js/jquery-1.8.3.min.js" />"></script>
        <script src="<c:url value="/resources/jquery/js/profile.js" />"></script>
        
        
    </head>
    <body>
             <div class="container">
        <nav role="navigation" class="navbar navbar-default">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a href="#" class="navbar-brand">Home</a>
    </div>
    <!-- Collection of nav links, forms, and other content for toggling -->
    <div id="navbarCollapse" class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
            <li><a href="#">Search</a></li>
            <li class="active"><a href="profile/${reg.id}">Profile</a></li>
            <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">Messages <b class="caret"></b></a>
                <ul role="menu" class="dropdown-menu">
                    <li><a href="#">Inbox</a></li>
                    <li><a href="#">Drafts</a></li>
                    <li><a href="#">Sent Items</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Trash</a></li>
                </ul>
            </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><h4>Welcome
                    <c:if test="${not empty profile.firstname}">
                        ${profile.firstname}
                    </c:if>
                
                </h4></li>
            <li><a href="#">Logout</a></li>
        </ul>
    </div>
</nav>
<form id="target" class="fieldset">
<div class="container-fluid">
        
                   <div class="form-group">
                    <label for="firstname" class="col-sm-3 control-label">FirstName</label>
                    <div class="col-sm-6">
                        <input type="text" id="firstname" name="firstname" class="form-control" value= ${profile.firstname} readonly>
                    </div>
                </div>
                <br />
                <br />
                 <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-6">
                        <input type="text" id="email" name="email" class="form-control" value= ${profile.email} readonly>
                    </div>
                </div>
                <br />
                <br />
                <div class="form-group">
                    <div class="col-sm-1 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Edit</button>
                    </div>
                   </form>
                </div>
 
</div>
   </div>
    </body>
</html>
