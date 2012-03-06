class Admin::SlidesController < Admin::ResourceController
  respond_to :html

  def index
    @slides = Slide.all
  end

end
