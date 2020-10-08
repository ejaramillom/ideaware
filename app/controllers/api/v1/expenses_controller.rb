class Api::V1::PicturesController < ApplicationController
  before_action :set_picture
  protect_from_forgery with: :null_session

  def index
    pictures = Picture.order( "picture_date DESC" )

    if params[ :category ].present?
      pictures = Picture.where( "category LIKE ?", "%#{ params[ :category ] }%" )
    end
    if params[:type].present?
      pictures = Picture.where( "type LIKE ?", "%#{ params[ :type ] }%")
    end

    categories = Category.all
    types = Type.all

    render json: pictures
  end

  def create
    picture = Picture.new( safe_params )
    if picture.save
      render json: picture, status: 201
    else
      render json: { errors: picture.errors }, status: 422
    end
  end

  def update
    picture = Picture.find( params[ :id ] )
    if picture.update( safe_params )
      render json: picture, status: 200
    else
      render json: {errors: picture.errors}, status: 422
    end
  end

  def destroy
    picture = Picture.find( params[ :id ] )
    picture.destroy
    head :no_content
  end

  private
  def safe_params
    params.require(:picture).permit(:type_id, :picture_date, :category_id, :concept, :value)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end
end
