class RemoveOldNameByCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :name_ua
    remove_column :categories, :name_ru
    remove_column :categories, :name_en
  end
end
