class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table "users", force: :cascade do |t|
      t.string :username
      t.string :email
      t.boolean :admin, default: false

      # important password_digest - that bcrypted
      t.string :password_digest
      t.timestamps
    end
  end
end
