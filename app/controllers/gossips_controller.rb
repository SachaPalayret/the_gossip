class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new('title' => params[:title], 'content' => params[:content])
            
        if @gossip.save
          redirect_to acceuil_path
        else
          render 'new'
        end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(gossip_params)
    redirect_to gossip_path(@gossip.id)
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_pat
  end

  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end
end
