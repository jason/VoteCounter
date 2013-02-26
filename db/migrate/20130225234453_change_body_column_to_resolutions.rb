class ChangeBodyColumnToResolutions < ActiveRecord::Migration
  def change
    change_column(:resolutions, :body, :text)
  end
end
