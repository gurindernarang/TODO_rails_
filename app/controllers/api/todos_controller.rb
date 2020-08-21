class Api::TodosController < ApiController
  def index
    #Get list of all the TODOs
    @todos = Todo.all
    #render(json: {message: 'List of all Todos', data: @todos}, status: :ok)
  end
  def show
    #Return a specific TODO
    @todo = Todo.find(params[:id])
    #render(json: {message: 'Detail for @{params[:id]}'}, data: @todo, status: :ok)
  end
  def create
    @todo = Todo.new(todo_params)
    # render(json: {message: 'Successfully created!', data: @todo}, status: :ok)
    # @todo.errors
    # @todo.persisted?
    #if @todo.valid?
    #  @todo.save
    #else
    #  render(json: @todo.errors)
    #end
    return { json: @todo.errors } unless @todo.save!
  end
  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)
  end
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
  end

  def assign_tag
    @todo = Todo.find(params[:id])
    @todo.tags << Tag.find_or_create_by(tag_params)
  end

  def delete_tag
    @todo = Todo.find(params[:id])
    @todo.tags.where(name: tag_params[:name]).destroy_all
  end

  def update_status
    @todo = Todo.find(params[:id])
    @todo.update(todo_status_params)
  end

  private

  def todo_params
    # whitelisting todo param and then title param under todo
    params.require(:todo).permit(:title)
  end

  def tag_params
    params.require(:tag).permit(:name)
  end

  def todo_status_params
    params.require(:todo).permit(:status)
  end
end
