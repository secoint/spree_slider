class Admin::SlidesController < Admin::ResourceController
  respond_to :html

  def index
    @slides = Slide.ordered
  end

  def update_positions
    params[:positions].each do |id, index|
      Slide.update_all(['position=?', index], ['id=?', id])
    end

    respond_to do |format|
      format.js  { render :text => 'Ok' }
    end
  end
end
