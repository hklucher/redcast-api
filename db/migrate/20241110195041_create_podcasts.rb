class CreatePodcasts < ActiveRecord::Migration[8.0]
  def change
    create_table :podcasts do |t|
      t.string :title null: false
      t.string :description null: false
      t.string :image_url null: false

      t.timestamps
    end
  end
end
