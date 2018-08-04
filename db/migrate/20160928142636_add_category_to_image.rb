class AddCategoryToImage < ActiveRecord::Migration
  def change
    add_reference :images, :category
  end
end
