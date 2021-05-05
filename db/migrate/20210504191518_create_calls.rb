class CreateCalls < ActiveRecord::Migration[6.0]
  def change
    create_table :calls do |t|
      t.string :description
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end