class CreateContestants < ActiveRecord::Migration[6.0]
  def change
    create_table :contestants do |t|
      t.string :name
      t.integer :season
      t.integer :age
      t.string :hometown
      t.string :occupation
      t.string :status
      t.string :img_url

      t.timestamps
    end
  end
end
