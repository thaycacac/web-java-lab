<%-- 
    Document   : login
    Created on : Aug 19, 2018, 9:24:30 PM
    Author     : Thaycacac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="myStyle.css" rel="stylesheet">
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <nav>
                <ul class="my-nav">
                    <li>
                        <a href="">Home</a>
                    </li>
                    <li>
                        <a href="">
                            Take Quiz</a>
                    </li>
                    <li>
                        <a href="">
                            Make Quiz</a>
                    </li>
                    <li>
                        <a href="">
                            Manage Quiz</a>
                    </li>
                </ul>
            </nav>
            <div class="content">
                <p class="title-regist">Login Form</p>
                <form action="">
                    <div class="table">
                        <div class="table-row">
                            <div class="table-cell">
                                <p class="cell-attribute">User Name:</p>
                            </div>
                            <div class="table-cell">
                                <input type="text" class="input" name="username">
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell">
                                <p class="cell-attribute">Password:</p>
                            </div>
                            <div class="table-cell">
                                <input type="text" class="input" name="password">
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell">
                            </div>
                            <div class="table-cell">
                                <input type="submit" value="Sign in">
                                <a href="" class="link-register">Register</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
