class Todo < ActiveRecord::Base
  def to_pleasant_string
    is_completed = completed ? "[x]" : "[]"
    "#{id}.  #{todo_text}  #{due_date}  #{is_completed}"
  end
end
