class AddAvatarToMatches < ActiveRecord::Migration
  def change
  	add_attachment :matches, :avatar
  end
end
