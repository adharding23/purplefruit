class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.boolean :completionstatus
      t.integer :pointsreceived
	  t.references :assignment

      t.timestamps
    end
	add_index :submissions, :assignment_id
  end
end
