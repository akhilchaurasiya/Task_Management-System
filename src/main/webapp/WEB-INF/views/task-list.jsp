<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Task Management Home</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .task-table {
            margin-top: 20px;
        }
        .quote {
            margin-top: 30px;
            text-align: center;
            font-style: italic;
            color: #6c757d;
        }
        footer {
            margin-top: 50px;
            padding: 20px;
            background-color: #343a40;
            color: white;
            text-align: center;
        }
        footer a {
            color: #ffc107;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Task Manager</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/tasks/create"><i class="fas fa-plus-circle"></i> Create New Task</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <h1 class="text-center my-4">Your Task List</h1>
        <div class="table-responsive task-table">
            <table class="table table-bordered table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Priority</th>
                        <th>Status</th>
                        <th>Due Date</th> <!-- Added Due Date -->
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="task" items="${tasks}">
                        <tr>
                            <td>${task.id}</td>
                            <td>${task.title}</td>
                            <td>${task.priority}</td>
                            <td>${task.status}</td>
                            <td>${task.dueDate}</td> <!-- Displaying Due Date -->
                            <td>
                                <a href="/tasks/edit/${task.id}" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                <a href="/tasks/delete/${task.id}" class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i> Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Motivational Quote -->
        <div class="quote">
            <p>"The key is not to prioritize what's on your schedule, but to schedule your priorities."</p>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>Task Management System &copy; 2024 | <a href="#">Contact Us</a></p>
    </footer>

    <!-- Bootstrap and JS scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
