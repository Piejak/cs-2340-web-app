class AddDateToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :date, :date
  end
end
