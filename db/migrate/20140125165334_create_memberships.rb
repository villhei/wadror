class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :beer_club_id
      t.string :integer
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
