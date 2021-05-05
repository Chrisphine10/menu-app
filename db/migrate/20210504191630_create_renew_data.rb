class CreateRenewData < ActiveRecord::Migration[6.0]
  def change
    create_table :renew_data do |t|
      t.string :description
      t.references :data, null: false, foreign_key: true

      t.timestamps
    end
  end
end
