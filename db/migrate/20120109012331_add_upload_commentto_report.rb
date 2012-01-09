class AddUploadCommenttoReport < ActiveRecord::Migration
  def up
    add_column :reports, :upload_comment, :string
  end

  def down
    remove_column :reports, :upload_comment, :string
  end
end
