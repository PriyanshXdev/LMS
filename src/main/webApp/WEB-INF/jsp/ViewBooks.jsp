<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
    <%@include file="header.html" %>

    <div class="container" style="margin-top: 30px;">

        <h1 class="text-center mb-4">View Books</h1>

        <c:choose>
            <c:when test="${empty books}">
                <p class="text-center text-muted mt-4">
                    No books found. <a href="addbook">Add a book</a>
                </p>
            </c:when>
            <c:otherwise>
                <table class="table table-bordered table-hover table-striped text-center">
                    <thead style="background-color: #1a56a0; color: white;">
                        <tr>
                            <th>Book ID</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>ISBN</th>
                            <th>Published Year</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="book" items="${books}">
                            <tr>
                                <td>${book.id}</td>
                                <td>${book.title}</td>
                                <td>${book.author}</td>
                                <td>${book.isbn}</td>
                                <td>${book.publishedYear}</td>
                               <td>

                               <a href="/deleteBook?id=${book.id}" title="Delete" style="color: #dc3545; margin-right: 10px;">
                                   <i class="fa-solid fa-trash"></i>
                               </a>

                               <% /*
                             <a href="/editBook?id=${book.id}" title="Edit" style="color: #1a56a0;">
                                   <i class="fa-solid fa-pen-to-square"></i>
                               </a>
                               */ %>
                               	</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:otherwise>
        </c:choose>

    </div>

    <footer class="footer">
        <p>
            &copy; 2026 Library Management System | Designed by PriyanshXdev

        </p>
    </footer>

</body>