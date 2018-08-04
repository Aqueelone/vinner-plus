class AddTitleToImage < ActiveRecord::Migration
  def change
    add_column :images, :title_translations, :jsonb, null: false, default: '{}'
  end
end
