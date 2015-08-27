class GossipsController < ApplicationController

  def index
    @gossips = Gossip.all
    if params[:search]
        @gossips = Gossip.search(params[:search]).order("created_at DESC")
      else
        @gossips
    end
  end

   private

    def set_gossips_type
      @gossips_type = gossips_type_class.find(params[:id])
    end

    def gossips_type 
      Gossip.gossips_type.include?(params[:type]) ? params[:type] : "Gossip"
    end

    def gossips_type_class 
      gossips_type.constantize 
    end


end
