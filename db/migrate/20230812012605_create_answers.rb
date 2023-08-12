class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :name, null: false
      t.integer :rank, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
