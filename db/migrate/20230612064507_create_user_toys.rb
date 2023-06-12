class CreateUserToys < ActiveRecord::Migration[7.0]
  def change
    create_table :user_toys do |t|
      t.references :user, null: false, foreign_key: true
      t.references :toy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
