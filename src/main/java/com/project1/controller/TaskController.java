package com.project1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project1.model.Task;
import com.project1.service.TaskService;

@Controller
@RequestMapping("/tasks")
public class TaskController {

    @Autowired
    private TaskService taskService;

    // Show all tasks in the view
    @GetMapping
    public String getAllTasks(Model model) {
        List<Task> tasks = taskService.getAllTasks();
        model.addAttribute("tasks", tasks);
        return "task-list";  // This will render task-list.jsp
    }

    // Show form to create a new task
    @GetMapping("/create")
    public String showCreateTaskForm(Model model) {
        model.addAttribute("task", new Task());
        return "create-task";  // This will render create-task.jsp
    }

    // Handle form submission for creating a new task
    @PostMapping("/create")
    public String createTask(@ModelAttribute("task") Task task) {
        taskService.createTask(task);
        return "redirect:/tasks";  // Redirect to task list page after saving
    }

    // Show the form to edit an existing task
    @GetMapping("/edit/{id}")
    public String showEditTaskForm(@PathVariable Long id, Model model) {
        Task task = taskService.getTaskById(id);
        model.addAttribute("task", task);
        return "edit-task";  // This will render edit-task.jsp
    }

    // Handle form submission for updating an existing task
    @PostMapping("/edit/{id}")
    public String updateTask(@PathVariable Long id, @ModelAttribute("task") Task updatedTask) {
        taskService.updateTask(id, updatedTask);
        return "redirect:/tasks";
    }

    // Delete a task
    @GetMapping("/delete/{id}")
    public String deleteTask(@PathVariable Long id) {
        taskService.deleteTask(id);
        return "redirect:/tasks";
    }
}
