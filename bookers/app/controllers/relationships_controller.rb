class RelationshipsController < ApplicationController
  def create
    follow = Relationship.new(follower_id: params[:user_id], following_id: current_user.id)
    follow.save
    redirect_to request.referer
  end

  def destroy
    follow = current_user.active_relationships.find_by(follower_id: params[:user_id])
    follow.destroy
    redirect_to request.referer
  end
  
  def follows
  end
  
  def followers
  end
  
end
