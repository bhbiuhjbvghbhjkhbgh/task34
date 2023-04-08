class HostsController < ApplicationController
  def top
  end

  def new
    @host = Host.new
  end

  def create
    host = Host.new(host_params)
    host.save
    redirect_to '/top'
  end

  def index
    @hosts = Host.all
  end


  private

  def host_params
    params.require(:host).permit(:title, :body)
  end
end
