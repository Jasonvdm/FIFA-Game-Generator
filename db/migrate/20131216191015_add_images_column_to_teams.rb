class AddImagesColumnToTeams < ActiveRecord::Migration
  def change
  	add_column :teams, :avatar_file_name, :string
  end
end
