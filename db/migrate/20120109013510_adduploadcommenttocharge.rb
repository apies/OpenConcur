class Adduploadcommenttocharge < ActiveRecord::Migration
  
  def up
    add_column :charges, :upload_comment, :string
  end

  def down
    remove_column :charges, :upload_comment, :string
  end
  
end
