<%-- 
    Document   : listquestion
    Created on : Aug 19, 2018, 10:37:03 PM
    Author     : Thaycacac
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dataobj.Question"%>
<%@page import="dal.QuestionDAO"%>
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
                        <a href="listquestion.jsp">
                            Manage Quiz</a>
                    </li>
                    <li>
                        <a href="">
                            Log out</a>
                    </li>
                </ul>
            </nav>
            <%!
                int countQuestion;
                ArrayList<Question> listQuestion;
                String username;
            %>
            <%
                QuestionDAO questionDAO = new QuestionDAO();
                username = (String) request.getSession().getAttribute("nameUser");
                listQuestion = questionDAO.listQuestion(username);
                countQuestion = questionDAO.countQuesion(username);
            %>
            <div class="content">
                <p class="title-wellcome">Number of question
                    <span class="name"><%= countQuestion%></span>
                </p>
                <div class="table">
                    <div class="table-row">
                        <div class="table-cell table-head">
                            <p>Question</p>
                        </div>
                        <div class="table-cell table-head">
                            <p>DateCreated</p>
                        </div>
                    </div>
                    <%
                        for (Question question : listQuestion) {
                    %>
                    <div class="table-row">
                        <div class="table-cell list-question">
                            <p><%= question.getQuestion()%></p>
                        </div>
                        <div class="table-cell list-date">
                            <p><%= question.getCreated()%></p>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </body>
</html>
