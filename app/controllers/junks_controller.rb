class JunksController < ApplicationController
  def index
    @junks = Junk.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    junk = Junk.create(name: params["name"])
    render 'create.html.erb'
  end

  def show
    junk_id =  params[:id]
    @junk = Junk.find_by(id: junk_id)
    render 'show.html.erb'
  end
end
