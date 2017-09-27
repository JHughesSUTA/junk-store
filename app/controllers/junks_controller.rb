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

  def edit
    @junk = Junk.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @junk = Junk.find_by(id: params[:id])
    @junk.update(
      name: params[:name]
    )
    render "update.html.erb"
  end

  def destroy
    @junk = Junk.find_by(id: params[:id])
    @junk.destroy 
    render "destroy.html.erb"
  end
end
