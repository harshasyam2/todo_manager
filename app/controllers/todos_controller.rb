class TodosController < ApplicationController
  def index
    render plain: Todo.order(:due_date).map { |todo| todo.to_pleasant_string }.join("\n")
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render plain: todo.to_pleasant_string
  end

  def create
    todo_text = params[:todo_text]
    due_date = Date.parse(params[:due_date])
    completed = params[:completed]
    new_todo = Todo.create!(todo_text: todo_text, due_date: due_date, completed: completed)
    render plain: "Hey! your new todo is created with id : #{new_todo.id}"
  end
end
