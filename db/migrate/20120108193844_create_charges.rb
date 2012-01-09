class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :cardholder
      t.date :date_of_charge
      t.string :description
      t.float :amount
      t.string :reference_number
      t.string :air_route
      t.string :air_traveler
      t.integer :user_id
      t.integer :report_id
      t.boolean :billable
      t.boolean :approved
      t.string :business_purpose

      t.timestamps
    end
  end
end
