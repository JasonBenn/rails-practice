class CreateSubtasks < ActiveRecord::Migration
  def change
    create_table :subtasks do |t|
      t.string :description
      t.belongs_to :todo, index: true

      t.timestamps null: false
    end
  end
end
