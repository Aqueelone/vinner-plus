class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.jsonb :name_translations, null: false, default: '{}'
      t.jsonb :description_translations, null: false, default: '{}'
      t.belongs_to :category
      t.belongs_to :product
      t.timestamps null: false
    end
    add_index  :galleries, :name_translations, using: :gin
    add_index  :galleries, :description_translations, using: :gin
  end
end
