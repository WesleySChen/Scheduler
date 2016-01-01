class CreatePDates < ActiveRecord::Migration
  def change
    create_table :p_dates do |t|
      t.date :avail_date

      t.timestamps null: false
    end
  end
end
