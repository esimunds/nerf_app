class AddTeamToRoles < ActiveRecord::Migration[6.1]
  def change
    add_column :roles, :team, :string
  end
end
