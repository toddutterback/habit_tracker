class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :name
      t.boolean :completed
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
