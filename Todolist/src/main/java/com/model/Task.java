package com.model;

public class Task {

	private int id;
	private String title;
	private String description;
	private String dueDate;
	
	public Task() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Task(String title, String description, String dueDate) {
		super();
		this.id=id;
		this.title = title;
		this.description = description;
		this.dueDate = dueDate;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id=id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	@Override
	public String toString() {
		return "Task [title=" + title + ", description=" + description + ", dueDate=" + dueDate + "]";
	}
	

}
