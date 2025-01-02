class CreateSupports < ActiveRecord::Migration[8.0]
  def change
    create_table :supports do |t|
      t.references :user, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.decimal :amount
      t.string :status
      t.string :payment_reference

      t.timestamps
    end
  end
end
