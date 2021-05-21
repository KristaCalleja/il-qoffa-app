class TasksImportsController < ApplicationController
  def new
    @tasks_import = TasksImport.new
  end

  def create
    @tasks_import = TasksImport.new(params[:tasks_import])
    if @tasks_import.save
      redirect_to tasks_path
    else
      render :new
    end
  end
end
