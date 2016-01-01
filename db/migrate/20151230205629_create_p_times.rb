class CreatePTimes < ActiveRecord::Migration
  def change
    create_table :p_times do |t|
      t.time :p_start
      t.time :p_end

      t.timestamps null: false
    end
  end
end
