class CreateEpisodes < ActiveRecord::Migration[8.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :description
      t.string :audio_url
      t.string :publish_date

      t.belongs_to :podcast

      t.timestamps
    end
  end
end
