class CreateWithdrawMpesas < ActiveRecord::Migration[6.0]
  def change
    create_table :withdraw_mpesas do |t|
      t.string :description
      t.references :mpesa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
