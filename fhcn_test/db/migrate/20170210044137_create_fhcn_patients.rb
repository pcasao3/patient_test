class CreateFhcnPatients < ActiveRecord::Migration[5.0]
  def change
    create_table :fhcn_patients do |t|
      t.string :ufname
      t.string :uminitial
      t.string :ulastname
      t.date :ptDob
      t.integer :pcp
      t.text :pt_q1
      t.text :pt_q2
      t.text :pt_q3

      t.timestamps
    end
  end
end
