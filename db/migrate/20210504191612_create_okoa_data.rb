class CreateOkoaData < ActiveRecord::Migration[6.0]
  def change
    create_table :okoa_data do |t|
      t.string :description
      t.references :data, null: false, foreign_key: true

      t.timestamps
    end
  end
end
