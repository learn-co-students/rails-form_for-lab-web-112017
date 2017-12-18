class CreateSchoolClasses < ActiveRecord::Migration

  def change
    create_table :school_classes do |t|
      t.string :title
      t.integer :room_number
    end
  end

end


# The SchoolClass table should have the columns: title:string and room_number:integer. The Student model and database table have already been created for you.
