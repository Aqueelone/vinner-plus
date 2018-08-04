class ImagesController < ApplicationController
  before_action :require_admin
  def index
    ##session['category'] && @categories_id = Category.where("categories.id = '#{session['category']}' OR categories.parent_id = '#{session['category']}'").map {|c| c.id}
    session['category'] && q = " OR images.category_id IN (SELECT id FROM categories WHERE categories.id = '#{session['category']}' OR categories.parent_id = '#{session['category']}')" || q=''
    @images = Image.where("images.category_id IS NULL"+q).order('images.created_at DESC')
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
    @galleries = Gallery.all.order('galleries.created_at ASC')
  end

  def create
    @image = Image.new(image_params)
    !@image.save && (redirect_to new_image_path)
    redirect_to images_path
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    !@image.update_attributes(image_params) && (redirect_to edit_image_path)
    redirect_to @image
  end

  def create_from_gallery
    @image = Image.new(image_params)
    @image.save
    redirect_to edit_galleries_path(@galeries), turbolinks: true
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path
  end

  private

  def image_params
    params.require(:image).permit(:title, :description, :file, :gallery_id, :category_id)
  end
end
