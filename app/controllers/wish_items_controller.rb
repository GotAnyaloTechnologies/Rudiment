class WishItemsController < ApplicationController
  before_filter :require_user

  def index
  end

  # DELETE /wish_items/1
  def destroy
    if params[:variant_id]
      item = current_user.wish_list_items(params[:variant_id]).first
      item.update_attributes( active: false )
    end
    render  action: :index
  end
end
