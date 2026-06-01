<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Library Management System</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
    />

    <link
      href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="css/styles.css" />
  </head>
  <body>
    <!-- Header / Navbar -->
    <nav class="navbar navbar-expand-lg">
      <div class="container">
        <a class="navbar-brand fw-bold" href="/">📚 Library System</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
        >
          <span class="navbar-toggler-icon text-white"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ms-auto">
            <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
            <li class="nav-item">
              <a class="nav-link" href="AddBook.jsp">Add Book</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="ViewBooks">View Books</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="#">About</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero" data-aos="fade-up" data-aos-duration="1500">
      <div class="container">
        <h1>Welcome to the Library Management System</h1>
        <p>
          Organize your library with ease — add, edit, and manage all your books
          efficiently.
        </p>
        <a href="ViewBooks" class="btn-main mt-3">📖 View Books</a>
        <a href="AddBook.jsp" class="btn-main mt-3 ms-2">➕ Add New Book</a>
      </div>
    </section>

    <!-- Profile Section -->
    <section class="profile" data-aos="zoom-in" data-aos-duration="1500">
      <div class="container">
        <img
          src="C:\Users\MSII\Downloads\IMG_20250912_110536_1.jp""
          alt="Code With Priyanshu"
        />
        <h2>
          <a href="" target="_blank">
            Code With Priyanshu
          </a>
        </h2>


      </div>
    </section>

    <!-- Features Section -->
    <section class="features">
      <div class="container">
        <h3 data-aos="fade-down" data-aos-duration="1000">
          📘 Why Use Our System?
        </h3>
        <div class="row mt-4">
          <div class="col-md-4" data-aos="fade-right" data-aos-duration="1000">
            <h5>🧾 Easy Book Management</h5>
            <p>Add, update, and delete books effortlessly with a few clicks.</p>
          </div>
          <div
            class="col-md-4"
            data-aos="fade-up"
            data-aos-duration="1000"
            data-aos-delay="200"
          >
            <h5>🔍 Quick Search</h5>
            <p>Find your favorite books instantly by title or author.</p>
          </div>
          <div
            class="col-md-4"
            data-aos="fade-left"
            data-aos-duration="1000"
            data-aos-delay="400"
          >
            <h5>📊 Organized Records</h5>
            <p>
              Keep all your library records safe and structured in one place.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
      <p>
        &copy;  Library Management System | Designed by
        <strong
          ><a href="" target="_blank"
            >Code With Priyanshu</a
          ></strong
        >
      </p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- AOS JS -->
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
    <script>
      AOS.init({
        once: true, // animation occurs only once
        easing: "ease-in-out",
        duration: 1000,
        offset: 100,
      });
    </script>
  </body>
</html>