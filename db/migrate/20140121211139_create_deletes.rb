class CreateDeletes < ActiveRecord::Migration
  def change
    create_table :deletes do |t|
      t.string :Ratings

      t.timestamps
    end
  end
end
