class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_class do |t|
      t.string :title
      t.number :room_number

      t.timestamps null: false
    end
  end
end
