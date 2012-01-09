class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.float :total_amount
      t.date :report_date
      t.integer :user_id

      t.timestamps
    end
  end
end
