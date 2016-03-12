class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :name
      t.boolean :completed, default: false
      t.belongs_to :user
      t.integer :times_to_completion
      t.integer :number_completed, default: 0
      


      t.timestamps null: false
    end
  end
end
