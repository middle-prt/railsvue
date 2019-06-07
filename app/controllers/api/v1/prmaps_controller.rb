class Api::V1::PrmapsController < ApiController

  # ActiveRecordのレコードが見つからなければ404 not foundを応答する
  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: { error: '404 not found' }, status: 404
  end

  def index
    #@posts = Post.birth_between('2018-10-11', '2018-10-18').category('食品・飲料').order(:address)
    @posts = Post.all.order(:address)
    render json: @posts
  end

  private

    def prmap_params
      params.permit(
          :main_category_name, :from, :to
      )
    end
end