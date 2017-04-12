class AddLatitudeToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :latitude, :double
  end
end
