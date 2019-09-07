class GroupEvalsUpdates < ActiveRecord::Migration[5.2]

  def change
    rename_column :groups_evals, :rejected, :rejected
    rename_column :groups_evals, :proto_title, :proto_title
    add_column :groups_evals, :active, :boolean, null: false, default: true
    add_column :groups_users, :active, :boolean, null: false, default: true
  end

end
