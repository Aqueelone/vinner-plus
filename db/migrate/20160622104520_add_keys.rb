class AddKeys < ActiveRecord::Migration
  def change
    add_foreign_key "identities", "users", name: "identities_user_id_fk"
  end
end
