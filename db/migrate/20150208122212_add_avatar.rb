class AddAvatar < ActiveRecord::Migration
  def change
    remove_column :commitees, :logo, :text
    add_column :commitees, :avatar_file_name, :string
    add_column :commitees, :avatar_content_type, :string
    add_column :commitees, :avatar_file_size, :integer
    add_column :commitees, :avatar_updated_at, :datetime
  end

end