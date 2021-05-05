class CreateMpesas < ActiveRecord::Migration[6.0]
  def change
    create_table :mpesas do |t|
      t.string :decription
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
