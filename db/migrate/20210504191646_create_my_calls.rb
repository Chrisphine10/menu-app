class CreateMyCalls < ActiveRecord::Migration[6.0]
  def change
    create_table :my_calls do |t|
      t.string :description
      t.references :call, null: false, foreign_key: true

      t.timestamps
    end
  end
end
