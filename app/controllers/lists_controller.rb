class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.where(id: params[:id])
  end

  def new
    @list = List.new
    @servers = Server.all
  end

  def create
    @list = List.new(list_params)
    @servers = Server.all
    if @list.save
      flash[:success] = 'List Created'
      redirect_to action: 'index'
    else
      flash[:error] = 'Operation Failed'
      render action: 'new'
    end
  end

  def edit
    @list = List.find(params[:id])
    @servers = Server.all
  end

  def update
    @list = List.find(params[:id])
    @servers = Server.all
    if @list.update_attributes(list_params)
      flash[:success] = 'List Updated'
      redirect_to action: 'index'
    else
      flash[:error] = 'Operation Failed'
      render action: 'edit'
    end
  end

  def destroy
    if List.destroy(params[:id])
      flash[:success] = 'List Deleted'
    else
      flash[:error] = 'Operation Failed'
    end
    redirect_to action: 'index'
  end

  private

    def list_params
      params.require(:list).permit(:name, :server_id)
    end
end
