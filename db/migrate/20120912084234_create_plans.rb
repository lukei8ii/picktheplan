class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.datetime :start
      t.string :where
      t.string :what

      t.timestamps
    end
  end
end
