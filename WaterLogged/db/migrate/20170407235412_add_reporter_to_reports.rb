class AddReporterToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :reporter, :string
  end
end
