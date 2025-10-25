class CreatePromises < ActiveRecord::Migration[7.1]
  def change
    create_table :promises do |t|

      t.string :code
      t.text :description
      t.string :short_description

      t.timestamps
    end
  end
end
