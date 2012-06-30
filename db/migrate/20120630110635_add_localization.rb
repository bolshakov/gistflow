class AddLocalization < ActiveRecord::Migration
  def change
    add_column :posts, :language, :string, default: 'en'
    add_column :settings, :language, :string, default: 'en'
  end
end
