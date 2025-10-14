class CreatePartners < ActiveRecord::Migration[7.1]
  def change
    create_table :partners do |t|
      t.string :name
      t.references :contract, null: true, foreign_key: true
      t.references :promise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
