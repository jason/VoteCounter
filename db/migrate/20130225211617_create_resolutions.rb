class CreateResolutions < ActiveRecord::Migration
  def change
    create_table :resolutions do |t|
      t.string :title
      t.text :body
      t.integer :meeting_id

      t.timestamps
    end
  end
end
