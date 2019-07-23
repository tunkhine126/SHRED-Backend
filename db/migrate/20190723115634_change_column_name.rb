class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :bikes, :type, :category
  end
end
