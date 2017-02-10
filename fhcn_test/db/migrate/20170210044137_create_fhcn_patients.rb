class CreateFhcnPatients < ActiveRecord::Migration[5.0]
  def change
    create_table :fhcn_patients do |t|
      t.string :id
      t.string :ufname
      t.string :uminitial
      t.string :ulastname
      t.string :ptDob
      t.string :pcp
      t.string :pt_q1
      t.string :pt_q2
      t.string :pt_q3

      t.timestamps
    end
  end
end
