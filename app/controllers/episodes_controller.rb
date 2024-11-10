class EpisodesController < ApiController
  def index
    episodes = Episode.where(podcast_id: params[:podcast_id])

    render json: episodes
  end
end