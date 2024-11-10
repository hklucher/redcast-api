class PodcastsController < ApiController
  def index
    podcasts = Podcast.all
    
    render json: podcasts
  end

  def create
    podcast = Podcast.new(podcast_params)

    if podcast.valid?
      podcast.save

      render json: podcast
    else
      render json: podcast.errors
    end
  end

  private

  def podcast_params
    params.require(:podcast).permit(
      :title,
      :description,
      :image_url,
      episodes_attributes: [:title, :description, :audio_url, :publish_date]
    )
  end
end