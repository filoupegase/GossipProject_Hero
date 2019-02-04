class GossipController < ApplicationController
  def show
    @grossip = Gossip.all
  end
end
