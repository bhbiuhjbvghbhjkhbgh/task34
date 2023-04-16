class HostsController < ApplicationController
  def top
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.new(host_params)
    @host.save
    redirect_to host_path(@host)
  end

  def index
    @hosts = Host.all
  end
  def show
    @host = Host.find(params[:id])
  end
  def edit
    @host = Host.find(params[:id])
  end
  def update
    @host = Host.find(params[:id])
    @host.update(host_params)
    redirect_to host_path(@host)
  end
  def destroy
    host = Host.find(params[:id])
    host.destroy
    redirect_to hosts_path
  end


  private

  def host_params
    params.require(:host).permit(:title, :body)
  end
end
