class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :location
      t.string :first_name
      t.string :last_name
      t.string :sport
      t.text :bio

      t.timestamps
    end
  end
end
