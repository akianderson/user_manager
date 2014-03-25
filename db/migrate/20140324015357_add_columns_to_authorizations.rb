class AddColumnsToAuthorizations < ActiveRecord::Migration
  def change
    add_column :authorizations, :code, :string
    add_column :authorizations, :access_token, :string
    add_column :authorizations, :refresh_token, :string
    add_column :authorizations, :access_token_expires_at, :string
    add_column :authorizations, :state, :string
    add_column :authorizations, :client_id, :string
  end
end
