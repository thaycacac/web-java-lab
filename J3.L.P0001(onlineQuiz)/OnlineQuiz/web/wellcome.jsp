<%-- 
    Document   : wellcome
    Created on : Aug 19, 2018, 9:51:02 PM
    Author     : Thaycacac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="myStyle.css" rel="stylesheet">
        <title>Wellcome</title>
    </head>
    <body>
        <div class="container">
            <nav>
                <ul class="my-nav">
                    <li>
                        <a href="wellcome.jsp">Home</a>
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
                    <li>
                        <a href="">
                            Log out</a>
                    </li>
                </ul>
            </nav>
            <div class="content">
                <p class="title-wellcome">Wellcome
                    <!--BUG-->
                    <span class="name">${nameUser}</span>
                </p>
                <p class="text-content">Enter number of question:</p>
                <form action="">
                    <input type="text" class="input-content" name="numberQuestion">
                    <br>
                    <input type="submit" value="Start" class="submit-content">
                </form>
            </div>
        </div>
    </body>
</html>
