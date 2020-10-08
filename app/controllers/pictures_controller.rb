# frozen_string_literal: true
class PicturesController < ApplicationController
  # before_action :months_list
  # require 'active_support/time'

  def index
    @tab = :pictures
    @pictures = Picture.by_month( @picture_date ).order("picture_date DESC")

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

  def add
    @picture = Picture.new

    respond_to do |format|
      format.js
      format.html
    end

  end

  def remove
    @picture = Picture.create(picture_params)
    if @picture.save
      redirect_to pictures_path, notice: "Foto guardada exitosamente"
    end

    respond_to do |format|
      format.js
      format.html
    end
  end

  def show
    @picture = Picture.find(params[:id])
  end

  # def edit
  #   @picture = Picture.find(params[:id])
  # end

  # def update
  #   @picture = Picture.find(params[:id])
  #   @picture.update(picture_params)
  #
  #   redirect_to pictures_path
  # end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy

    redirect_to pictures_path
  end

  def picture_params
    params.require( :picture ).permit( :value, :concept, :picture_date, :type_id,  :category_id )
  end

  # def months_list
  #   (1..12).map do |m|
  #     m.months.ago
  #   end
  # end
end
