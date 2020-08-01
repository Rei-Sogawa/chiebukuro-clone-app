class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.boolean :is_resolved, default: false

      t.timestamps
    end
  end
end
