<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="robots" content="noindex, nofollow">
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/Login.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
    </head>
    <body>
        <%
            String show_err = "",email = "",pass="";
            if (request.getAttribute("show_err") != null) {
                show_err = (String) request.getAttribute("show_err");
            }
            if (request.getAttribute("email") != null) {
                email = (String) request.getAttribute("email");
            }
            if (request.getAttribute("pass") != null) {
                pass = (String) request.getAttribute("pass");
            }
            
        %>
        <div class="container">
            <div class="row">
                <div class="col-md-5 mx-auto">

                    <div class="myform form ">
                        <div class="logo mb-3">
                            <div class="col-md-12 text-center">
                                <h1>Login</h1>
                            </div>
                        </div>
                        <div class="col-md-12 text-center">
                            <span style="color: red"><%=show_err%></span>
                        </div>
                        <form action="./Login" method="post">
                            <div class="form-group">
                                <label>Email address</label>
                                <input type="email" name="email_login" value="<%=email%>" class="form-control" aria-describedby="emailHelp" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="pass_login" value="<%=pass%>" class="form-control" aria-describedby="emailHelp" placeholder="Enter Password">
                            </div>
                            <div class="form-group">
                                <p class="text-center">By signing up you accept our <a href="#">Terms Of Use</a></p>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember" id="checkboxes-0" value="1">
                                <label for="checkboxes-0">Remember me</label>
                            </div>
                            <div class="col-md-12 text-center ">
                                <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
                            </div>
                            <div class="col-md-12 ">
                                <div class="login-or">
                                    <hr class="hr-or">
                                    <span class="span-or">or</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <p class="text-center">Don't have account? <a href="Signup.jsp" id="signup">Sign up here</a></p>
                                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>   
    </body>
</html>
