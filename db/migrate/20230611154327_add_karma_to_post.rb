class AddKarmaToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :karma, :integer, :default => 0
  end
end
