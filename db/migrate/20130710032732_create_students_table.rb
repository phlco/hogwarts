class CreateStudentsTable < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :name
      t.references :house
    end
  end

  def down
    drop_table :students
  end
end