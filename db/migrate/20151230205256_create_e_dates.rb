class CreateEDates < ActiveRecord::Migration
  def change
    create_table :e_dates do |t|
      t.date :pos_date

      t.timestamps null: false
    end
  end
end
