class TodosController < ApplicationController
  def index
    render plain: "Hello to rails! Today's date is :#{Date.today}"
  end
end
