<%-- 
    Document   : register
    Created on : Aug 19, 2018, 9:16:54 PM
    Author     : Thaycacac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="myStyle.css" rel="stylesheet">
        <title>Register</title>
    </head>
    <body>
        <div class="container">
            <nav>
                <ul class="my-nav">
                    <li>
                        <a href="/login.jsp">Home</a>
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
                <p class="title-regist">Registration Form</p>
                <form action="RegisterServlet" method="POST">
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
                                <p class="cell-attribute">User Type:</p>
                            </div>
                            <div class="table-cell">
                                <select name="type">
                                    <option value="0">Teacher</option>
                                    <option value="1">Student</option>
                                </select>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell">
                                <p class="cell-attribute">Email:</p>
                            </div>
                            <div class="table-cell">
                                <input type="text" class="input" name="email">
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell">
                                <p class="cell-attribute"></p>
                            </div>
                            <div class="table-cell">
                                <input type="submit" value="Register">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
