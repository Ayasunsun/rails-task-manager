class DeleteString < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :false, :string
    remove_column :tasks, :completed, :string
    add_column :tasks, :completed, :boolean, default: false
  end
end
