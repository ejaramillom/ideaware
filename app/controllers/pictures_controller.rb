# frozen_string_literal: true
class PicturesController < ApplicationController
  def index
    @pictures = Unsplash::Photo.all
    # @photo = Unsplash::Photo.all

    # type_id = params[ :type_id ] unless params[ :type_id ] == ''
    # category_id = params[ :category_id ] unless params[ :category_id ] == ''

    # if type_id.present?
    #   @pictures = Picture.by_month( @picture_date ).select_type( type_id.to_i ).order("picture_date DESC")
    # end
    # if category_id.present?
    #   @pictures = Picture.by_month( @picture_date ).select_category( category_id.to_i ).order("picture_date DESC")
    # end
    # if category_id.present? && type_id.present?
    #   @pictures = Picture.by_month( @picture_date ).select_category( category_id.to_i ).select_type( type_id.to_i ).order("picture_date DESC")
    # end

    respond_to do |format|
      format.js
      format.html { render 'index' }
    end

  end

  def create
    @picture = Picture.new

    # respond_to do |format|
    #   format.js
    #   format.html
    # end

  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy

    redirect_to pictures_path
  end

  def favorites
    @picture = Picture.all
  end
end

  # def destroy
  #   picture = Picture.find(params[:id])
  #   picture.destroy
  # end

  # def show
  #   @picture = Picture.find(params[:id])
  # end

  # def edit
  #   @picture = Picture.find(params[:id])
  # end

  # def update
  #   @picture = Picture.find(params[:id])
  #   @picture.update(picture_params)
  #
  #   redirect_to pictures_path
  # end
  # def picture_params
  #   params.require( :picture ).permit( :value, :concept, :picture_date, :type_id,  :category_id )
  # end

  # def months_list
  #   (1..12).map do |m|
  #     m.months.ago
  #   end
  # end
