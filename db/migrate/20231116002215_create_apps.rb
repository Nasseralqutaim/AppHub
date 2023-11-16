class CreateApps < ActiveRecord::Migration[7.1]
  def change
    create_table :apps do |t|
      t.string :name
      t.text :description
      t.string :color
      t.boolean :default_status
      t.string :link

      t.timestamps
    end
  end
end
