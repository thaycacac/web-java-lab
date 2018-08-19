<%-- 
    Document   : listquestion
    Created on : Aug 19, 2018, 10:37:03 PM
    Author     : Thaycacac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="myStyle.css" rel="stylesheet">
        <title>List Question</title>
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
                    <li>
                        <a href="">
                            Log out</a>
                    </li>
                </ul>
            </nav>
            <div class="content">
                <p class="title-wellcome">Number of question
                    <span class="name">1</span>
                </p>
                <form action="">
                    <div class="table">
                        <div class="table-row">
                            <div class="table-cell table-head">
                                <p>Question</p>
                            </div>
                            <div class="table-cell table-head">
                                <p>DateCreated</p>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="table-cell list-question">
                                <p>The name of capital of VietNam after year of 1975?</p>
                            </div>
                            <div class="table-cell list-date">
                                <p>20-Apr-2016</p>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
