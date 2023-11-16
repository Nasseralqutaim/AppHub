class AddShapeToApps < ActiveRecord::Migration[7.1]
  def change
    add_column :apps, :shape, :string
  end
end
