class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
    	t.string :name
    	t.string :country
    	t.string :job

      t.timestamps
    end
  end
end
