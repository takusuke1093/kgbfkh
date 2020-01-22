class CreateEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|
      t.text :name
      t.integer :user_id
      t.integer :school_id
      t.integer :meaningfulness
      t.integer :ease
      t.integer :textbook
      t.string :test_information
      t.string :other_information

      t.timestamps
    end
  end
end
