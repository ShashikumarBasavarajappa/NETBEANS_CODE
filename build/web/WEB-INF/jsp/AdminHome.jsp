<%-- 
    Document   : AdminHome
    Created on : Feb 23, 2017, 12:07:53 AM
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
    </head>
    <body>
        <div class="container">
            <a href="adminsearch">
            <button class="btn btn-danger" type="button">
                    <span class=" glyphicon glyphicon-search"></span>
            </button>       </a>
        </div>
    </body>
</html>
