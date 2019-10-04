class GroupEvalsUpdates < ActiveRecord::Migration[5.2]

  def change
    add_column :groups_evals, :active, :boolean, null: false, default: true
    add_column :groups_users, :active, :boolean, null: false, default: true
  end

end
