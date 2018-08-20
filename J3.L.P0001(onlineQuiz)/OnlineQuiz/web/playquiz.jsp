<%-- 
    Document   : playquiz
    Created on : Aug 19, 2018, 10:18:22 PM
    Author     : Thaycacac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="myStyle.css" rel="stylesheet">
        <title>Play Quiz</title>
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
                    <span class="name">${nameUser}</span>
                </p>
                <p class="time">Time remaining: <span>10:03</span></p>
                <p class="text-content">The name of capital of VietNam after year of 1997?</p>
                <form action="">
                    <input type="checkbox" class="checkbox-content" name="answer"><span class="value-check-box">Sai Gon </span><br>
                    <input type="checkbox" class="checkbox-content" name="answer"><span class="value-check-box">Ho Chi Minh</span> <br>
                    <input type="checkbox" class="checkbox-content" name="answer"><span class="value-check-box">Ha Noi</span> <br>
                    <input type="checkbox" class="checkbox-content" name="answer"><span class="value-check-box">Ha Tay </span><br>
                    <input type="submit" value="Next" class="submit-content">
                </form>
            </div>
        </div>
    </body>
</html>
