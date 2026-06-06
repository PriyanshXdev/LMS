
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library Management System</title>
<link rel="stylesheet" href="css/add_book.css">
<style>
.form-group {
display: flex;
flex-direction: column;
margin-bottom: 16px;
}
.form-group label {
font-weight: 600;
margin-bottom: 5px;
font-size: 14px;
color: #333;
}
.form-group input {
padding: 8px 12px;
font-size: 14px;
border: 1px solid #ccc;
border-radius: 4px;
width: 100%;
max-width: 400px;
box-sizing: border-box;
}
.form-actions {
display: flex;
gap: 10px;
margin-top: 20px;
}
.form-actions input[type="submit"],
.form-actions input[type="reset"] {
padding: 8px 20px;
font-size: 14px;
cursor: pointer;
border: 1px solid #ccc;
border-radius: 4px;
background: #f0f0f0;
}
.form-actions input[type="submit"] {
background: #1a56a0;
color: white;
border-color: #1a56a0;
}
.lms-logo {
display: inline-flex;
align-items: center;
gap: 8px;
color: white;
font-size: 18px;
font-weight: bold;
text-decoration: none;
}
.lms-icon {
display: inline-block;
background: white;
color: #1a56a0;
font-size: 18px;
border-radius: 4px;
width: 30px;
height: 30px;
line-height: 30px;
text-align: center;
font-weight: bold;
}
</style>
</head>
<body>
<%@include file="header.html" %>
  <div style="max-width: 600px; margin: 30px auto; padding: 0 20px;">

<h1>Add New Book</h1>
<form action="/addbook" method="post">

<div class="form-group">
<label for="title">Title</label>
<input type="text" id="title" name="title" required placeholder="Enter book title">
</div>

<div class="form-group">
<label for="author">Author</label>
<input type="text" id="author" name="author" required placeholder="Enter author name">
</div>

<div class="form-group">
<label for="isbn">ISBN</label>
<input type="text" id="isbn" name="isbn" required placeholder="1234-5678-9012">
</div>

<div class="form-group">
<label for="publishedYear">Published Year</label>
<input type="number" id="publishedYear" name="publishedYear" required
placeholder="e.g., 2020" min="1000" max="9999">
</div>

<div class="form-actions">
<input type="submit" value="Add Book">
<input type="reset" value="Reset">
</div>

</form>
   </div>

<footer class="footer">
<p>
            &copy; 2026 Library Management System | Designed by PriyanshXdev



</p>
</footer>
</body>
</html> 