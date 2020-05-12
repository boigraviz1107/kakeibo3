class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.string :name, null: false
      t.date :year_month
      t.integer :value
      
      t.timestamps
    end
  end
end
