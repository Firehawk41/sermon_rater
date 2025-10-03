class CreateResponses < ActiveRecord::Migration[8.0]
  def change
    create_table :responses do |t|
      t.references :sermon, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.integer :value
      t.check_constraint "value >=1 AND value <= 5", name: "value_between_1_and_5"
      t.timestamps
    end
  end
end
