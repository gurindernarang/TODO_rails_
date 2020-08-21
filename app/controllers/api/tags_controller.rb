class Api::TagsController < ApiController
  def todos
    @todos = Tag.find_by(name: params[:name]).todos
  end
end