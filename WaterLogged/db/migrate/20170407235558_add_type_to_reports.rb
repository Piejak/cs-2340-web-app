class AddTypeToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :type, :string
  end
end
