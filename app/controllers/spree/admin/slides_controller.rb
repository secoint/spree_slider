class Spree::Admin::SlidesController < Spree::Admin::ResourceController
  respond_to :html

  def index
    @slides = Spree::Slide.ordered
  end

  def update_positions
    params[:positions].each do |id, index|
      Spree::Slide.update_all(['position=?', index], ['id=?', id])
    end

    respond_to do |format|
      format.js  { render :text => 'Ok' }
    end
  end
end
