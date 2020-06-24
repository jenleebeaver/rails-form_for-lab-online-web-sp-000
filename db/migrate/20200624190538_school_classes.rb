class SchoolClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :school_classes do |t|
      t.string :title
      t.integer :last_name

      t.timestamps null: false
  end
end
