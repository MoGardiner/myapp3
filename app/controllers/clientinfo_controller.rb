class ClientinfoController < ApplicationController

  def index
    @clientinfo = Clientinfo.all
  end
  
  def new
    @clientinfo = Clientinfo.new
  end
  
  def create
    @clientinfo = Clientinfo.new(clientinfo_params)
    
    if @clientinfo.save
      redirect_to @clientinfo
    else
      render 'new'
    end
  end

  def show
    @clientinfo = Clientinfo.find(params[:id])
  end
  
  def edit
    @clientinfo = Clientinfo.find(params[:id])
  end
  
  def update
    @clientinfo = Clientinfo.find(params[:id])
    
    if @clientinfo.update(clientinfo_params)
      redirect_to @clientinfo
    else
      render 'edit'
    end
  end

  def destroy
  	@clientinfo = Clientinfo.find(params[:id])
  	@clientinfo.destroy
  	
  	redirect_to clientinfo_index_path
  end
  
  private
    def clientinfo_params
      params.require(:clientinfo).permit(:title, :text)
    end

end
