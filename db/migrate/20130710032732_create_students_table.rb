class CreateStudentsTable < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :name
      t.belongs_to :house
    end
  end

  def down
    drop_table :students
  end
end
