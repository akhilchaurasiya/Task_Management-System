<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Edit Task</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .form-container {
            margin-top: 50px;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
                    <a class="nav-link" href="/tasks"><i class="fas fa-tasks"></i> View Tasks</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="form-container">
                    <h3 class="text-center">Edit Task</h3>
                    <form action="/tasks/edit/${task.id}" method="POST">
                        <div class="form-group">
                            <label for="title">Task Title</label>
                            <input type="text" class="form-control" id="title" name="title" value="${task.title}" required>
                        </div>
                        <div class="form-group">
                            <label for="priority">Priority</label>
                            <input type="text" class="form-control" id="priority" name="priority" value="${task.priority}" required>
                        </div>
                        <div class="form-group">
                            <label for="status">Status</label>
                            <select class="form-control" id="status" name="status">
                                <option value="OPEN" ${task.status == 'OPEN' ? 'selected' : ''}>Open</option>
                                <option value="CLOSED" ${task.status == 'CLOSED' ? 'selected' : ''}>Closed</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="dueDate">Due Date</label>
                            <input type="date" class="form-control" id="dueDate" name="dueDate" value="${task.dueDate}" required>
                        </div>
                        <button type="submit" class="btn btn-success btn-block"><i class="fas fa-save"></i> Save Changes</button>
                    </form>
                </div>
            </div>
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
