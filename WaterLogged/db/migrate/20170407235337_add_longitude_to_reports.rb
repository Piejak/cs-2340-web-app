class AddLongitudeToReports < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :longitude, :double
  end
end
