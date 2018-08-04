class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.jsonb :description_translations, null: false, default: '{}'
      t.string :attachement
      t.string :file_id
      t.belongs_to :gallery, index: true, foreign_key: true
      t.timestamps null: false
    end

    add_index  :images, :description_translations, using: :gin
  end
end
