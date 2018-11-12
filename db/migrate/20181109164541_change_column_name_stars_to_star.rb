class ChangeColumnNameStarsToStar < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :stars, :star
  end
end
