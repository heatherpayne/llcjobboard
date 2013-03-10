class AddActiveTokensToUser < ActiveRecord::Migration
  def change
    add_column :users, :active_tokens, :number
  end
end
