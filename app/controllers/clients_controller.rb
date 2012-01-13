class ClientsController < ApplicationController
  def index
    @clients = Clients.all
  end
  def show
    @client = Client.find(params[:id])
  end
  def new
    @client = Client.new
  end
  def create
    @client = Client.find(params[:client])
    @client.save
    redirect_to clients_path
  end
  def edit
    @client = Client.find(params[:id])
  end
  def update
    @client = Client.find(params[:id])
    @client.update_attributes(params[:client])
    redirect_to client_path, client
  end
  def destroy
    @client = Client.find(params[:id])
    @client.destroy
    redirect_to clients_path
  end
end
