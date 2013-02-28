class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote_type_id
      t.integer :resolution_id
      t.integer :member_id

      t.timestamps
    end
  end
end
