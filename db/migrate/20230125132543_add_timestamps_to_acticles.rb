class AddTimestampsToActicles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :crated_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
