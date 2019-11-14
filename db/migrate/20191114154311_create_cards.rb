class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :text
      t.string :category
      t.string :urgency
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
