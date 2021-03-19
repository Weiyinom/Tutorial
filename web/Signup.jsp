<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="robots" content="noindex, nofollow">
        <title>Sign Up Now</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/Login.css" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
    </head>
    <body>
        <%
            String name_err = "", email_err = "", pass_err = "", name_signup = "", email_signup = "", pass_signup = "";
            if (request.getAttribute("name_err") != null) {
                name_err = (String) request.getAttribute("name_err");
            }
            if (request.getAttribute("email_err") != null) {
                email_err = (String) request.getAttribute("email_err");
            }
            if (request.getAttribute("pass_err") != null) {
                pass_err = (String) request.getAttribute("pass_err");
            }
            if (request.getAttribute("name_signup") != null) {
                name_signup = (String) request.getAttribute("name_signup");
            }
            if (request.getAttribute("email_signup") != null) {
                email_signup = (String) request.getAttribute("email_signup");
            }
            if (request.getAttribute("pass_signup") != null) {
                pass_signup = (String) request.getAttribute("pass_signup");
            }
        %>
        <div class="container">
            <div class="row">
                <div class="col-md-5 mx-auto">
                    
                    <div class="myform form ">
                        <div class="logo mb-3">
                            <div class="col-md-12 text-center">
                                <h1>Đăng ký</h1>
                            </div>
                        </div>
                        
                        
                        <form action="ControllerSignup" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Tên của bạn</label><br/>
                                <span style="color: red"><%=name_err%></span>
                                <input type="text" name="name_signup" class="form-control" aria-describedby="emailHelp" placeholder="Enter Firstname" value="<%=name_signup%>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Địa chỉ Email</label><br/>
                                <span style="color: red"><%=email_err%></span>
                                <input type="email" name="email-signup"  class="form-control" aria-describedby="emailHelp" placeholder="Enter email" value="<%=email_signup%>">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Password</label><br/>
                                <span style="color: red"><%=pass_err%></span>
                                <input type="password" name="pass-signup" class="form-control" aria-describedby="emailHelp" placeholder="Enter Password" value="<%=pass_signup%>">
                            </div>
                            <div class="col-md-12 text-center mb-3">
                                <button type="submit" class=" btn btn-block mybtn btn-primary tx-tfm">Đăng ký</button>
                            </div>
                            <div class="col-md-12 ">
                                <div class="form-group">
                                    <p class="text-center"><a href="Login.jsp" id="signin">Bạn đã có tài khoản?</a></p>
                                </div>
                            </div>
                        </form>
                    
                    
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
