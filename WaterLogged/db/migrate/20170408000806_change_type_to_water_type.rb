class ChangeTypeToWaterType < ActiveRecord::Migration[5.0]
  def change
    rename_column :reports, :type, :watertype
  end
end
