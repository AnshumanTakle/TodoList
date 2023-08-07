package com.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.model.Task;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;

@Controller
public class ToDoListController {

	private List<Task> tasks = new ArrayList<Task>();
	
//	ToDoListController(){
//	Task task1 = new Task("Complete Assignment", "Finish the project by Friday.", "2023, 8, 10");
//    Task task2 = new Task("Buy Groceries", "Get fruits, vegetables, and milk.", "2023, 8, 12");
// 
//    tasks.add(task1);
//    tasks.add(task2);
//	}

	private Task findTaskById(int id) {
		for (Task task : tasks) {
			if (task.getId() == id) {
				return task;
			}
		}
		return null; // Task with the given ID not found
	}

	@RequestMapping(path = "/home")
	public String home(Model model) {
		model.addAttribute("home", tasks);
		return "home";
	}

	@RequestMapping("/add")
	public String add() {
		return "add";
	}

	@PostMapping(value = "/addTask")
	public String addTask(@RequestParam String title, @RequestParam String description, @RequestParam String dueDate) {

		Task task = new Task(title, description, dueDate);

		tasks.add(task); // Add the task to the list

		return "redirect:/";
	}

	@GetMapping("/editTask")
	public String showEditTaskForm(@RequestParam int id, Model model) {
		// Find the task by ID and pass it to the view for editing
		Task taskToEdit = findTaskById(id);
		model.addAttribute("task", taskToEdit);
		return "edit"; // Returns the edit.jsp view
	}

	@PostMapping("/updateTask")
	public String updateTask(@ModelAttribute Task updatedTask) {
		// Find the task by ID and update its properties
		Task taskToUpdate = findTaskById(updatedTask.getId());
		taskToUpdate.setTitle(updatedTask.getTitle());
		taskToUpdate.setDescription(updatedTask.getDescription());
		taskToUpdate.setDueDate(updatedTask.getDueDate());
		return "redirect:/"; // Redirect back to the home page
	}

	@GetMapping("/deleteTask")
	public String deleteTask(@RequestParam int id) {
		Task taskToRemove = null;
		for (Task task : tasks) {
			if (task.getId() == id) {
				taskToRemove = task;
				break;
			}
		}
		if (taskToRemove != null) {
			tasks.remove(taskToRemove);
		}
		return "redirect:/"; // Redirect back to the home page
	}

}
