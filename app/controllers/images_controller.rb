class ImagesController < ApplicationController
  def create
    @image = current_user.images.new(image_params)
    if @image.save
      redirect_to image_url(@image)
    else
      flash.now[:alert] = @image.errors.full_messages
    end
  end

  def show
    @image = Image.find(params[:id])
    render :show
  end

  def destroy
    @image = Image.find(params[:id])

    if @image.destroy
      redirect_to root_url
    end
  end

  private

  def image_params
    params.require(:image).permit(:title, :body, :photo, :user_id)
  end
end
