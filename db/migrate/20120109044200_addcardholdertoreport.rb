class Addcardholdertoreport < ActiveRecord::Migration
  def up
    add_column :reports, :cardholder, :string
  end

  def down
    remove_column :reports, :cardholder, :string
  end
end
