<%-- 
    Document   : AdminHome
    Created on : Feb 23, 2017, 12:07:53 AM
    Author     : insbasavar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
        <link type="text/css" href="<%=request.getContextPath() %>/resources/css/bootstrap/js/bootstrap.min.js" rel="stylesheet"/>
        <link type="text/css" href="<%=request.getContextPath() %>/resources/css/adminhome.css" rel="stylesheet"/>
        <script src="<c:url value="/resources/jquery/js/jquery-1.8.3.min.js" />"></script>
        
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
            <li class="active"><a href="#">Search</a></li>
            <li><a href="#">Profile</a></li>
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
            <li><a href="#">Logout</a></li>
        </ul>
    </div>
</nav>
            <div class="container-fluid">
            <div class="well-searchbox">
                <form id="sampleForm" class="form-horizontal" action="Adminsearch" method-="get">
                    <div class="form-group">
                        <label class="col-md-4 control-label">Keyword</label>
                        <div class="col-md-8">
                            <input type="text" name="firstname" class="form-control" placeholder="Keyword">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label">Country</label>
                        <div class="col-md-8">
                            <select class="form-control" placeholder="Country">
                                <option value="">All</option>
                                <option value="">Country 1</option>
                                <option value="">Country 2</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label">Province</label>
                        <div class="col-md-8">
                            <select class="form-control" placeholder="Province">
                                <option value="">All</option>
                                <option value="">Province 1</option>
                                <option value="">Province 2</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label">City</label>
                        <div class="col-md-8">
                            <select class="form-control" placeholder="City">
                                <option value="">All</option>
                                <option value="">City 1</option>
                                <option value="">City 2</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-4 control-label">Category</label>
                        <div class="col-md-8">
                            <select class="form-control" placeholder="Category">
                                <option value="">All</option>
                                <option value="">Category 1</option>
                                <option value="">Category 2</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-offset-4 col-sm-5">
                        <button type="submit" class="btn btn-success">Search</button>
                    </div>
                </form>
            </div>
            </div>
            &nbsp;
            &nbsp;
        <c:if test="${empty searchresult}">
            <br />
            <div>Please wait for the search result </div>
         </c:if>
         <c:if test="${not empty searchresult}">
              <table class="table table-bordered table-inverse"  >
                   <thead style="background-color: black;color:red;"   >
                    <tr>
                      <th>#</th>
                      <th>First Name</th>
                      <th>Email</th>
                      <th>Accept/Reject</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="emp" items="${searchresult}">   

                    <tr>
                       <td>${emp.id}</td>
                       <td>${emp.firstname}</td>
                       <td>${emp.email}</td>
                       <td>
                           <input type="checkbox" checked data-toggle="toggle" data-style="android" data-onstyle="info">
                       </td>
                    </tr>
                  </tbody>
                 </c:forEach>  
              </c:if>
             </table> 
    </div>
    </body>
</html>
