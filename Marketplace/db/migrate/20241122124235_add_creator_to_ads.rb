class AddCreatorToAds < ActiveRecord::Migration[7.2]
  def change
    add_reference :ads, :creator, null: false, foreign_key: true
  end
end
